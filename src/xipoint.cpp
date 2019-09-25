////////////////////////////////////////////////////////////////////////////////
// Module Name:  xipoint.h/cpp
// Authors:      Sergey Shershakov
// Version:      0.2.1
// Date:         08.09.2017
//
// This is a part of the course "Algorithms and Data Structures" 
// provided by  the School of Software Engineering of the Faculty 
// of Computer Science at the Higher School of Economics.
////////////////////////////////////////////////////////////////////////////////

//#define XI_POINT_H_

#include "xipoint.h"

#include <algorithm>        // min
#include <cmath>

namespace xi
{

    Point::Point(int x, int y)
    {
        _x = x;
        _y = y;
    }


    void Point::shift(int shf)
    {
        _x += shf;
        _y += shf;
    }

    void Point::shift(int xSh, int ySh)
    {
        _x += xSh;
        _y += ySh;
    }

    void Point::shift(const Point &pt)
    {
        _x += pt.getX();
        _y += pt.getY();
    }

    double Point::dist(const Point &other)
    {
        return std::sqrt(std::pow(_x - other.getX(), 2)
                         + std::pow(_y - other.getY(), 2));
    }


    int Point::getX() const
    {
        return _x;
    }

    int Point::getY() const
    {
        return _y;
    }

    void Point::setX(int x)
    {
        _x = x;
    }

    void Point::setY(int y)
    {
        _y = y;
    }

    typedef unsigned int Uint;

    PointArray::PointArray()
    {
        _arr = nullptr;
    }

    PointArray::PointArray(const Point points[], Uint n)
    {
        _arr = new Point[n];
        _size = n;

        for (int i = 0; i < n; ++i)
        {
            _arr[i] = points[i];
        }
    }

    PointArray::PointArray(const xi::PointArray &pv)
    {
        _arr = new Point[pv._size];
        _size = pv._size;

        for (int i = 0; i < pv._size; ++i)
        {
            _arr[i] = *(pv.get(i));
        }
    }

    PointArray::~PointArray()
    {
        delete[] _arr;
    }

    void PointArray::append(const Point &pt)
    {
        resize(_size + 1);
        _arr[_size] = pt;
        ++_size;
    }

    void PointArray::insert(const Point &pt, Uint pos)
    {
        if (pos >= _size)
        {
            append(pt);
            return;;
        }

        PointArray *temp = new PointArray(_arr, _size);
        _arr[pos] = pt;

        resize(++_size);

        for (int i = pos + 1; i < _size; ++i)
        {
            _arr[i] = *(temp->get(i));
        }

        delete[] temp;
    }

    void PointArray::remove(xi::PointArray::Uint pos)
    {
        if (pos >= _size)
        {
            return;;
        }

        if (pos == _size - 1)
        {
            resize(_size - 1);
            return;
        }

        for (int i = pos; i < _size - 1; ++i)
        {
            _arr[i] = _arr[i + 1];
        }

        resize(_size - 1);
    }

    void PointArray::clear()
    {
        resize(0);
    }

    double PointArray::computePath()
    {
        double sum = 0;

        for (int i = 0; i < _size - 1; ++i)
        {
            sum += _arr[i].dist(_arr[i + 1]);
        }

        return sum;
    }

    Uint PointArray::getSize() const
    {
        return _size;
    }

    Point *PointArray::get(xi::PointArray::Uint pos)
    {
        if (pos >= _size)
        {
            return nullptr;
        }

        return &_arr[pos];
    }

    const Point *PointArray::get(xi::PointArray::Uint pos) const
    {
        if (pos >= _size)
        {
            return nullptr;
        }

        return &_arr[pos];
    }

    void PointArray::resize(xi::PointArray::Uint n)
    {
        if (n == _size)
        {
            return;

        }

        Point *temp = new Point[n];

        for (int i = 0; i < std::min(n, _size); ++i)
        {
            temp[i] = _arr[i];
        }

        _arr = temp;

        delete[] temp;
    }
}
