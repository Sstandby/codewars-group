using System;

public static class Kata
{
	public static bool AmIAfraid(string day, int num)
	{
		switch(day){
			case "Monday": 
			{
				if(num == 12)
				{
					return true;
				} 
				break;
			}
			
			case "Tuesday": 
			{
				if(num > 95)
				{
					return true;
				}
				break;
			}
			
			case "Wednesday": 
			{
				if(num == 34)
				{
					return true;
				}
				break;
			}
			
			case "Thursday": 
			{
				if(num == 0)
				{
					return true;
				}
				break;
			}
			
			case "Friday": 
			{
				if((num % 2) == 0)
				{
					return true;
				}
				break;
			}
			
			case "Saturday": 
			{
				if(num == 56)
				{
					return true;
				}
				break;
			}
			
			case "Sunday": 
			{
				if(Math.Abs(num) == 666)
				{
					return true;
				}
				break;
			}
		}
		return false;
	}
}

