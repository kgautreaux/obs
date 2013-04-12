class TemplatesController < ActionController::Metal
  def index
    self.response_body = <<-END
      <div class="toolbar">
        <h1 id="pageTitle">Obs</h1>
      </div>
      <div class="content panel">
      <ul>
        <li>
          <a ng-tap="$navigate.go('/new')" href>New</a>
        </li>
      </ul>
      </div>
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
