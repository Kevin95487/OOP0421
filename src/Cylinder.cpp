# ifndef CYLINDER_CPP
# define CYLINDER_CPP

# include "Cylinder.h"
#include <iostream>
#include <iomanip>
#include <cmath>


const double pi = M_PI;

double Cylinder :: SurfaceArea(){
    double k=pi*radius*radius*2+2*radius*pi*height;
    return k;
}

double Cylinder :: Volume(){
    double m=pi*radius*radius*height;
    return m;
}

double Cylinder :: Circumference(){
    double n=pi*radius*2;
    return n;
}

istream & operator>>(istream & in, Cylinder & cldr)
{
    in>>cldr.radius>>cldr.height;
    return in;
}

ostream & operator<<(ostream & out, Cylinder & cldr)
{
    int newthingbranch1=0;
    int newthingbranch2=0;
    out<<fixed<<std::setprecision(3)<<"Circumference: "<<cldr.Circumference()<<"\n";
    out<<fixed<<std::setprecision(3)<<"SurfaceArea: "<<cldr.SurfaceArea()<<"\n";
    out<<fixed<<std::setprecision(3)<<"Volume: "<<cldr.Volume()<<"\n";
    return out;
}

# endif
