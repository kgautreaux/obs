class TemplatesController < ActionController::Metal
  def index
    self.response_body = <<-END
    <p>
      Fucking Works {{name}}!
    </p>
    END
  end

  def edit
    self.response_body = <<-END
    <p>{{1 + 2}}</p>
    END
  end

  def new
    self.response_body = <<-END
    <div class="well">new template</div>
    END
  end
end
