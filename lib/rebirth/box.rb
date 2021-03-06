#--
#
#  This file is one part of:
#
#  Rebirth - Game development library for Ruby
#  Copyright (C) 2008, 2009  John Croisant
#
#  This library is free software; you can redistribute it and/or
#  modify it under the terms of the GNU Lesser General Public
#  License, version 2.1, as published by the Free Software Foundation.
#
#  This library is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  Lesser General Public License for more details.
#
#  You should have received a copy of the GNU Lesser General Public
#  License along with this library; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
# 
#++

need{ "shape" }


class Rebirth::Box < Rebirth::Shape

  # OpenGL calls to draw the Box
  def _draw
    glBegin(GL_TRIANGLE_FAN)

    glColor(1,1,1,1)

    verts = [[ 0.0, 0.0],
             [-0.5, 0.5],
             [-0.5,-0.5],
             [ 0.5,-0.5],
             [ 0.5, 0.5],
             [-0.5, 0.5]]

    verts.each { |vert|  glVertex( vert+[0] ) }

    glEnd()
  end


end
