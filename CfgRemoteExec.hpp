
class CfgRemoteExec
{
	// List of script functions allowed to be sent from client via remoteExec
	class Functions
	{
		mode = 2;
		jip = 1;
		class AR_Client_Rappel_From_Heli { allowedTargets=0; };
		class AR_Hint { allowedTargets=1; };
		class AR_Hide_Object_Global { allowedTargets=2; };
		class AR_Enable_Rappelling_Animation { allowedTargets=2; };
		class AR_Rappel_From_Heli { allowedTargets=4; };
		class AUR_Hint { allowedTargets=1; };
		class AUR_Hide_Object_Global { allowedTargets=2; };
		class AUR_Enable_Rappelling_Animation_Global { allowedTargets=2; };
		class AUR_Play_Rappelling_Sounds_Global { allowedTargets=2; };
	};
};
