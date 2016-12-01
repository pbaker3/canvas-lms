#
# Copyright (C) 2012 Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.
#

# @API Assignments
class BookPagesController < ApplicationController

  def show
    set_book_page
  end

  private
  def set_book_page
    if params[:id]
      @book_page = BookPage.find(params[:id])
    elsif params[:title] && params[:format]
      @book_page = BookPage.where(title: "#{params[:title]}.#{params[:format]}").first
    elsif params[:title]
      @book_page = BookPage.where(title: "#{params[:title]}").first
    end
  end
end
