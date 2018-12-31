### Rails command line

https://guides.rubyonrails.org/command_line.html


Common commands:
```
rails console
rails server            # starts server
bin/rails
rails generate
rails dbconsole
rails new app_name
```


##### `rails new app_name`

if dir (and git) exists,
`rails new . --git --database=postgresql` 



https://codeburst.io/how-to-build-a-good-api-using-rubyonrails-ef7eadfa3078

### Rails - API Mode

`rails new [api_name]  — api`

**Versioning**

`app/controllers/api/v1`

**Scaffolding a resource**

```
rails generate scaffold Article title:string content:text slug:string

rails dg:migrate
```

 A scaffold in Rails is a full set of model, database migration for that model, controller to manipulate it, views to view and manipulate the data, and a test suite for each of the above.


**Seeding the DB**

`seeds.rb`
`$ rails db:seed`


**Quick start with -API and Scaffold**

`$ rails server`

![](2018-12-30-13-52-51.png)

comes with some bootstrap and css too for the `/photos`


and raw json for `/photos.json`

![](2018-12-30-14-11-06.png)



very informative command line:

![](2018-12-30-13-53-20.png)



#### Modifying through migrations

https://stackoverflow.com/questions/6373202/how-does-one-add-an-attribute-to-a-model


Add a new column
```
$ rails generate migration AddNewColumnToMyTable column_name:column_type(string by default)

## edit ...rb

$ rails db:migrate
```

Add to `params`, check `photos_controller.rb` for this

```
    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:title, :description, :photo_url)
    end
```


also add it to the JSON Builder

![](2018-12-30-14-43-58.png)


**self.up vs change**
https://stackoverflow.com/questions/10365129/rails-migrations-self-up-and-self-down-versus-change


Rename a column - then do manually



#### A good API

A good api has 4 traits

predictable and consistent: code reuse for api end points.
static : an api should not change in a breaking way.
simple and clear: an api should return what’s expected.
flexible : easy to scale and maintain