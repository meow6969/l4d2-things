function GetScore(numBhops, vel, a, b)
	{
		local cMult;
		if (numBhops < 4 && vel > 350)
			cMult = 0.5;
		else
			cMult = 1;

		local dMult;
		if (numBhops < 5 && vel > 410)
			dMult = 0.5;
		else
			dMult = 1;

		local eMult = 1;
		/* if (vel > 280 || vel < 310)
			eMult += 1.25;
		if (vel < 280)
			eMult += -0.25;
		if (vel > 310)
			eMult += -0.25; */
		if (vel > 280)
			eMult += 0.25;
		else if (vel < 280)
			eMult += -0.25;

		local gMult;
		if (numBhops < 4)
			gMult = 1;
		else
			gMult = 1 + (0.05 * (numBhops - 3));

		local hMult;
		if (numBhops < 3)
			hMult = 1;
		else if (numBhops < 4)
		{
			if (vel < 120)
				hMult = 0.85;
			else
				hMult = 1;
		}
		else
		{
			local a = 120 + (floor((numBhops - 4) / 2) * 20)
			if (vel < a)
			{
				hMult = 0.85 - (0.05 * (numBhops - 4))
				if (hMult < 0.35)
					hMult = 0.35;
			}
			else
				hMult = 1;
		}

		local iMult;
		if (vel <= 10)
			iMult = 0;
		else
			iMult = 1;

		local jSum;
		if (vel > 220)
			jSum = 100;
		else
			jSum = 0;

		return (vel * cMult * dMult * eMult * gMult * hMult * iMult) + jSum;
	}

::n <- 5;
::v <- 220;

for (local i = 0; i < 20; i++)
{
	print("numbhops="+::n+", velocity="+::v+", score="+::GetScore(::n, ::v, 0, 0)+"\n");
	::n += 1;
	::v += 0;
}
print("\n");

::n <- 5;
::v <- 220;

for (local i = 0; i < 20; i++)
{
	print("numbhops="+::n+", velocity="+::v+", score="+::GetScore(::n, ::v, 0, 0)+"\n");
	::n += 0;
	::v += 10;
}
print("\n");

::n <- 5;
::v <- 220;

for (local i = 0; i < 20; i++)
{
	print("numbhops="+::n+", velocity="+::v+", score="+::GetScore(::n, ::v, 0, 0)+"\n");
	::n += 1;
	::v += 20;
}


