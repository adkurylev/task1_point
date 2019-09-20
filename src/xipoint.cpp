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

    class Point
    {
    protected:
        int _x, _y;

    public:
        Point(int x = 0, int y = 0)
        {
            _x = x;
            _y = y;
        }

    public:
        void shift(int shf)
        {
            _x += shf;
            _y += shf;
        }

        void shift(int xSh, int ySh)
        {
            _x += xSh;
            _y += ySh;
        }

        void shift(const Point &pt)
        {
            _x += pt.getX();
            _y += pt.getY();
        }

        double dist(const Point &other)
        {
            return std::sqrt(std::pow(_x - other.getX(), 2)
                             + std::pow(_y - other.getY(), 2));
        }

    public:
        int getX() const
        {
            return _x;
        }

        int getY() const
        {
            return _y;
        }

        void setX(int x)
        {
            _x = x;
        }

        void setY(int y)
        {
            _y = y;
        }
    };

    class PointArray
    {
    public:
        typedef unsigned int Uint;

    protected:
        Point *_arr;
        Uint _size;

        // НЕ РЕАЛИЗОВАНО
        void resize(Uint n)
        {

        }

    public:
        PointArray()
        {
            _arr = nullptr;
        }

        PointArray(const Point points[], Uint n)
        {
            _arr = new Point[n];
            _size = n;

            for (int i = 0; i < n; ++i)
            {
                _arr[i] = points[i];
            }
        }

        PointArray(const PointArray &pv)
        {
            _arr = new Point[pv.getSize()];
            _size = pv.getSize();

            for (int i = 0; i < pv.getSize(); ++i)
            {
                _arr[i] = pv.get(i);
            }
        }
    };

}
