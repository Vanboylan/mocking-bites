class SecretDiary
    def initialize(diary) # diary is an instance of Diary
      @diary = diary
      @lock = true
    end
  
    def read
      @lock == true ? "Go away!" : @diary.read_it
    end
  
    def lock
      @lock = true
    end
  
    def unlock
      @lock = false
    end
  end