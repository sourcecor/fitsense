module Admin::CategoriesHelper
  def cate_recur(cate)
    r_cate = []
    r_cate << [ cate.caption, cate.id ]
    cate.sub_categories.each do |item|
      if !item.sub_categories.empty?
        g_cate = cate_recur(item)
        r_cate = r_cate + g_cate
      else
        r_cate << [ item.caption, item.id ]
      end
    end
    return r_cate
  end

  def cate_group
    r_cate = []
    Category.where(parent_id: 0).each do |cate|
      g_cate = cate_recur(cate)
      r_cate << [ cate.caption, g_cate ]
    end
    return r_cate
  end
end
