
local function find(h,vg) 
  local f = false;
  for _,v in next, h do 
    if type(v) ~= 'function' then 
      if v.f == vg then f= v break end
    end
  end
  return f
end
switch = setmetatable({}, { -- can make this shit a func too lazy to so continue to cry
   __call = function(mytable, var)
    return setmetatable({i=var},{
      __call = function(t,stats)
        local g = find(stats,var)
        if (g) then 
          g.fn()
        elseif stats.default then
          stats.default()
        end
        return nil
      end
    })
   end
})
case = setmetatable({},{
  __call = function(tb,ch)
    return setmetatable({ch},{
      __sub = function(f,fn)
        return {['f']=f[1],['fn']=fn}
      end 
    })
  end
})
