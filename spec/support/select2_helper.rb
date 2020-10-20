module Select2Helper
  def select2_choose(id, options)
    options[:query] ||= options[:choose]

    page.execute_script %Q{
      $('#s2id_#{id} .select2-offscreen')
        .trigger('keydown')
        .val('#{options[:query]}')
        .trigger('keyup');
    }

    if options[:first]
      find('.select2-highlighted .select2-match').click
    else
      find('.select2-result-label', text: options[:choose]).click
    end
  end
end
