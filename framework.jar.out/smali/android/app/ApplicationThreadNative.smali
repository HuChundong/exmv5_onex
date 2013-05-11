.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .parameter "obj"

    .prologue
    .line 56
    if-nez p0, :cond_1

    .line 57
    const/4 v0, 0x0

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 59
    :cond_1
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 61
    .local v0, in:Landroid/app/IApplicationThread;
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0           #in:Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 644
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 101
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    packed-switch p1, :pswitch_data_0

    .line 639
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 78
    :pswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 80
    .local v7, b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/16 v77, 0x1

    .line 81
    .local v77, finished:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v99, 0x1

    .line 82
    .local v99, userLeaving:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 83
    .local v24, configChanges:I
    move-object/from16 v0, p0

    move/from16 v1, v77

    move/from16 v2, v99

    move/from16 v3, v24

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 84
    const/4 v5, 0x1

    goto :goto_0

    .line 80
    .end local v24           #configChanges:I
    .end local v77           #finished:Z
    .end local v99           #userLeaving:Z
    :cond_0
    const/16 v77, 0x0

    goto :goto_1

    .line 81
    .restart local v77       #finished:Z
    :cond_1
    const/16 v99, 0x0

    goto :goto_2

    .line 89
    .end local v7           #b:Landroid/os/IBinder;
    .end local v77           #finished:Z
    :pswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 91
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v96, 0x1

    .line 92
    .local v96, show:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 93
    .restart local v24       #configChanges:I
    move-object/from16 v0, p0

    move/from16 v1, v96

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 94
    const/4 v5, 0x1

    goto :goto_0

    .line 91
    .end local v24           #configChanges:I
    .end local v96           #show:Z
    :cond_2
    const/16 v96, 0x0

    goto :goto_3

    .line 99
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 101
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v96, 0x1

    .line 102
    .restart local v96       #show:Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 103
    const/4 v5, 0x1

    goto :goto_0

    .line 101
    .end local v96           #show:Z
    :cond_3
    const/16 v96, 0x0

    goto :goto_4

    .line 108
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 110
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v97, 0x1

    .line 111
    .local v97, sleeping:Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 112
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 110
    .end local v97           #sleeping:Z
    :cond_4
    const/16 v97, 0x0

    goto :goto_5

    .line 117
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 119
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v16, 0x1

    .line 120
    .local v16, isForward:Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 121
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 119
    .end local v16           #isForward:Z
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 126
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 128
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 129
    .local v13, ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 130
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 135
    .end local v7           #b:Landroid/os/IBinder;
    .end local v13           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 137
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 138
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 139
    .local v8, ident:I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 140
    .local v9, info:Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/Configuration;

    .line 141
    .local v10, curConfig:Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 142
    .local v11, compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 143
    .local v12, state:Landroid/os/Bundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 144
    .restart local v13       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 145
    .local v14, pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v15, 0x1

    .line 146
    .local v15, notResumed:Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v16, 0x1

    .line 147
    .restart local v16       #isForward:Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 148
    .local v17, profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 150
    .local v18, profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v19, 0x1

    .local v19, autoStopProfiler:Z
    :goto_a
    move-object/from16 v5, p0

    .line 151
    invoke-virtual/range {v5 .. v19}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 153
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 145
    .end local v15           #notResumed:Z
    .end local v16           #isForward:Z
    .end local v17           #profileName:Ljava/lang/String;
    .end local v18           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v19           #autoStopProfiler:Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_7

    .line 146
    .restart local v15       #notResumed:Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_8

    .line 148
    .restart local v16       #isForward:Z
    .restart local v17       #profileName:Ljava/lang/String;
    :cond_8
    const/16 v18, 0x0

    goto :goto_9

    .line 150
    .restart local v18       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_9
    const/16 v19, 0x0

    goto :goto_a

    .line 158
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #b:Landroid/os/IBinder;
    .end local v8           #ident:I
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v10           #curConfig:Landroid/content/res/Configuration;
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v12           #state:Landroid/os/Bundle;
    .end local v13           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v14           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v15           #notResumed:Z
    .end local v16           #isForward:Z
    .end local v17           #profileName:Ljava/lang/String;
    .end local v18           #profileFd:Landroid/os/ParcelFileDescriptor;
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 160
    .restart local v7       #b:Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v13

    .line 161
    .restart local v13       #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 162
    .restart local v14       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 163
    .restart local v24       #configChanges:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/4 v15, 0x1

    .line 164
    .restart local v15       #notResumed:Z
    :goto_b
    const/16 v26, 0x0

    .line 165
    .local v26, config:Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 166
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    .end local v26           #config:Landroid/content/res/Configuration;
    check-cast v26, Landroid/content/res/Configuration;

    .restart local v26       #config:Landroid/content/res/Configuration;
    :cond_a
    move-object/from16 v20, p0

    move-object/from16 v21, v7

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v25, v15

    .line 168
    invoke-virtual/range {v20 .. v26}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V

    .line 169
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 163
    .end local v15           #notResumed:Z
    .end local v26           #config:Landroid/content/res/Configuration;
    :cond_b
    const/4 v15, 0x0

    goto :goto_b

    .line 174
    .end local v7           #b:Landroid/os/IBinder;
    .end local v13           #ri:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v14           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .end local v24           #configChanges:I
    :pswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v14

    .line 176
    .restart local v14       #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 177
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 178
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 183
    .end local v7           #b:Landroid/os/IBinder;
    .end local v14           #pi:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 185
    .restart local v7       #b:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v78, 0x1

    .line 186
    .local v78, finishing:Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 187
    .restart local v24       #configChanges:I
    move-object/from16 v0, p0

    move/from16 v1, v78

    move/from16 v2, v24

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 188
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 185
    .end local v24           #configChanges:I
    .end local v78           #finishing:Z
    :cond_c
    const/16 v78, 0x0

    goto :goto_c

    .line 193
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 195
    .restart local v6       #intent:Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ActivityInfo;

    .line 196
    .restart local v9       #info:Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 197
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 198
    .local v31, resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 199
    .local v32, resultData:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v33

    .line 200
    .local v33, resultExtras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v34, 0x1

    .local v34, sync:Z
    :goto_d
    move-object/from16 v27, p0

    move-object/from16 v28, v6

    move-object/from16 v29, v9

    move-object/from16 v30, v11

    .line 201
    invoke-virtual/range {v27 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 203
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 200
    .end local v34           #sync:Z
    :cond_d
    const/16 v34, 0x0

    goto :goto_d

    .line 207
    .end local v6           #intent:Landroid/content/Intent;
    .end local v9           #info:Landroid/content/pm/ActivityInfo;
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v31           #resultCode:I
    .end local v32           #resultData:Ljava/lang/String;
    .end local v33           #resultExtras:Landroid/os/Bundle;
    :pswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 209
    .local v36, token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ServiceInfo;

    .line 210
    .local v9, info:Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 211
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v9, v11}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 212
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 216
    .end local v9           #info:Landroid/content/pm/ServiceInfo;
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v36           #token:Landroid/os/IBinder;
    :pswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 218
    .restart local v36       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 219
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v93, 0x1

    .line 220
    .local v93, rebind:Z
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v93

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 221
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 219
    .end local v93           #rebind:Z
    :cond_e
    const/16 v93, 0x0

    goto :goto_e

    .line 225
    .end local v6           #intent:Landroid/content/Intent;
    .end local v36           #token:Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 227
    .restart local v36       #token:Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 228
    .restart local v6       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 229
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 234
    .end local v6           #intent:Landroid/content/Intent;
    .end local v36           #token:Landroid/os/IBinder;
    :pswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 236
    .restart local v36       #token:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v37, 0x1

    .line 237
    .local v37, taskRemoved:Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 238
    .local v38, startId:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 240
    .local v39, fl:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 241
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Intent;

    .local v40, args:Landroid/content/Intent;
    :goto_10
    move-object/from16 v35, p0

    .line 245
    invoke-virtual/range {v35 .. v40}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 246
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 236
    .end local v37           #taskRemoved:Z
    .end local v38           #startId:I
    .end local v39           #fl:I
    .end local v40           #args:Landroid/content/Intent;
    :cond_f
    const/16 v37, 0x0

    goto :goto_f

    .line 243
    .restart local v37       #taskRemoved:Z
    .restart local v38       #startId:I
    .restart local v39       #fl:I
    :cond_10
    const/16 v40, 0x0

    .restart local v40       #args:Landroid/content/Intent;
    goto :goto_10

    .line 251
    .end local v36           #token:Landroid/os/IBinder;
    .end local v37           #taskRemoved:Z
    .end local v38           #startId:I
    .end local v39           #fl:I
    .end local v40           #args:Landroid/content/Intent;
    :pswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 253
    .restart local v36       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 254
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 259
    .end local v36           #token:Landroid/os/IBinder;
    :pswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 261
    .local v42, packageName:Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 263
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v44

    .line 265
    .local v44, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    new-instance v45, Landroid/content/ComponentName;

    move-object/from16 v0, v45

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 267
    .local v45, testName:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 268
    .restart local v17       #profileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 270
    .restart local v18       #profileFd:Landroid/os/ParcelFileDescriptor;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/16 v19, 0x1

    .line 271
    .restart local v19       #autoStopProfiler:Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v49

    .line 272
    .local v49, testArgs:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v71

    .line 273
    .local v71, binder:Landroid/os/IBinder;
    invoke-static/range {v71 .. v71}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v50

    .line 274
    .local v50, testWatcher:Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 275
    .local v51, testMode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v52, 0x1

    .line 276
    .local v52, openGlTrace:Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v53, 0x1

    .line 277
    .local v53, restrictedBackupMode:Z
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v54, 0x1

    .line 278
    .local v54, persistent:Z
    :goto_16
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/res/Configuration;

    .line 279
    .restart local v26       #config:Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 280
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v57

    .line 281
    .local v57, services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v58

    .local v58, coreSettings:Landroid/os/Bundle;
    move-object/from16 v41, p0

    move-object/from16 v43, v9

    move-object/from16 v46, v17

    move-object/from16 v47, v18

    move/from16 v48, v19

    move-object/from16 v55, v26

    move-object/from16 v56, v11

    .line 282
    invoke-virtual/range {v41 .. v58}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 286
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 265
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v17           #profileName:Ljava/lang/String;
    .end local v18           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v19           #autoStopProfiler:Z
    .end local v26           #config:Landroid/content/res/Configuration;
    .end local v45           #testName:Landroid/content/ComponentName;
    .end local v49           #testArgs:Landroid/os/Bundle;
    .end local v50           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v51           #testMode:I
    .end local v52           #openGlTrace:Z
    .end local v53           #restrictedBackupMode:Z
    .end local v54           #persistent:Z
    .end local v57           #services:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v58           #coreSettings:Landroid/os/Bundle;
    .end local v71           #binder:Landroid/os/IBinder;
    :cond_11
    const/16 v45, 0x0

    goto :goto_11

    .line 268
    .restart local v17       #profileName:Ljava/lang/String;
    .restart local v45       #testName:Landroid/content/ComponentName;
    :cond_12
    const/16 v18, 0x0

    goto :goto_12

    .line 270
    .restart local v18       #profileFd:Landroid/os/ParcelFileDescriptor;
    :cond_13
    const/16 v19, 0x0

    goto :goto_13

    .line 275
    .restart local v19       #autoStopProfiler:Z
    .restart local v49       #testArgs:Landroid/os/Bundle;
    .restart local v50       #testWatcher:Landroid/app/IInstrumentationWatcher;
    .restart local v51       #testMode:I
    .restart local v71       #binder:Landroid/os/IBinder;
    :cond_14
    const/16 v52, 0x0

    goto :goto_14

    .line 276
    .restart local v52       #openGlTrace:Z
    :cond_15
    const/16 v53, 0x0

    goto :goto_15

    .line 277
    .restart local v53       #restrictedBackupMode:Z
    :cond_16
    const/16 v54, 0x0

    goto :goto_16

    .line 291
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v17           #profileName:Ljava/lang/String;
    .end local v18           #profileFd:Landroid/os/ParcelFileDescriptor;
    .end local v19           #autoStopProfiler:Z
    .end local v42           #packageName:Ljava/lang/String;
    .end local v44           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v45           #testName:Landroid/content/ComponentName;
    .end local v49           #testArgs:Landroid/os/Bundle;
    .end local v50           #testWatcher:Landroid/app/IInstrumentationWatcher;
    .end local v51           #testMode:I
    .end local v52           #openGlTrace:Z
    .end local v53           #restrictedBackupMode:Z
    .end local v71           #binder:Landroid/os/IBinder;
    :pswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 293
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 298
    :pswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 300
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 305
    :pswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 307
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->requestThumbnail(Landroid/os/IBinder;)V

    .line 308
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 313
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/res/Configuration;

    .line 315
    .restart local v26       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 316
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 320
    .end local v26           #config:Landroid/content/res/Configuration;
    :pswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 322
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 326
    :pswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 328
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 332
    :pswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v92

    .line 334
    .local v92, proxy:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v88

    .line 335
    .local v88, port:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 336
    .local v75, exclList:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v92

    move-object/from16 v2, v88

    move-object/from16 v3, v75

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 341
    .end local v75           #exclList:Ljava/lang/String;
    .end local v88           #port:Ljava/lang/String;
    .end local v92           #proxy:Ljava/lang/String;
    :pswitch_19
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 343
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 347
    :pswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v76

    .line 349
    .local v76, fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 350
    .local v94, service:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 351
    .local v40, args:[Ljava/lang/String;
    if-eqz v76, :cond_17

    .line 352
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v40

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 354
    :try_start_0
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_17
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 362
    .end local v40           #args:[Ljava/lang/String;
    .end local v76           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v94           #service:Landroid/os/IBinder;
    :pswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v76

    .line 364
    .restart local v76       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 365
    .restart local v94       #service:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 366
    .restart local v40       #args:[Ljava/lang/String;
    if-eqz v76, :cond_18

    .line 367
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v40

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 369
    :try_start_1
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    :cond_18
    :goto_18
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 377
    .end local v40           #args:[Ljava/lang/String;
    .end local v76           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v94           #service:Landroid/os/IBinder;
    :pswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v60

    .line 380
    .local v60, receiver:Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 381
    .restart local v6       #intent:Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 382
    .restart local v31       #resultCode:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v63

    .line 383
    .local v63, dataStr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v64

    .line 384
    .local v64, extras:Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v65, 0x1

    .line 385
    .local v65, ordered:Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v66, 0x1

    .local v66, sticky:Z
    :goto_1a
    move-object/from16 v59, p0

    move-object/from16 v61, v6

    move/from16 v62, v31

    .line 386
    invoke-virtual/range {v59 .. v66}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V

    .line 388
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 384
    .end local v65           #ordered:Z
    .end local v66           #sticky:Z
    :cond_19
    const/16 v65, 0x0

    goto :goto_19

    .line 385
    .restart local v65       #ordered:Z
    :cond_1a
    const/16 v66, 0x0

    goto :goto_1a

    .line 393
    .end local v6           #intent:Landroid/content/Intent;
    .end local v31           #resultCode:I
    .end local v60           #receiver:Landroid/content/IIntentReceiver;
    .end local v63           #dataStr:Ljava/lang/String;
    .end local v64           #extras:Landroid/os/Bundle;
    .end local v65           #ordered:Z
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 394
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 399
    :pswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 401
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V

    .line 402
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 407
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v98, 0x1

    .line 409
    .local v98, start:Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v90

    .line 410
    .local v90, profileType:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 411
    .local v86, path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v76

    .line 413
    .restart local v76       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v98

    move-object/from16 v2, v86

    move-object/from16 v3, v76

    move/from16 v4, v90

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V

    .line 414
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 408
    .end local v76           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v86           #path:Ljava/lang/String;
    .end local v90           #profileType:I
    .end local v98           #start:Z
    :cond_1b
    const/16 v98, 0x0

    goto :goto_1b

    .line 411
    .restart local v86       #path:Ljava/lang/String;
    .restart local v90       #profileType:I
    .restart local v98       #start:Z
    :cond_1c
    const/16 v76, 0x0

    goto :goto_1c

    .line 419
    .end local v86           #path:Ljava/lang/String;
    .end local v90           #profileType:I
    .end local v98           #start:Z
    :pswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 421
    .local v79, group:I
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 422
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 427
    .end local v79           #group:I
    :pswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Landroid/content/pm/ApplicationInfo;

    .line 429
    .local v69, appInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 430
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 431
    .local v70, backupMode:I
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move/from16 v2, v70

    invoke-virtual {v0, v1, v11, v2}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 432
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 437
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v69           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v70           #backupMode:I
    :pswitch_22
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v69

    check-cast v69, Landroid/content/pm/ApplicationInfo;

    .line 439
    .restart local v69       #appInfo:Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/CompatibilityInfo;

    .line 440
    .restart local v11       #compatInfo:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v11}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 441
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 446
    .end local v11           #compatInfo:Landroid/content/res/CompatibilityInfo;
    .end local v69           #appInfo:Landroid/content/pm/ApplicationInfo;
    :pswitch_23
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    new-instance v83, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v83 .. v83}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 448
    .local v83, mi:Landroid/os/Debug$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 449
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    const/4 v5, 0x0

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 451
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 456
    .end local v83           #mi:Landroid/os/Debug$MemoryInfo;
    :pswitch_24
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 458
    .local v73, cmd:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v85

    .line 459
    .local v85, packages:[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v73

    move-object/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 460
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 465
    .end local v73           #cmd:I
    .end local v85           #packages:[Ljava/lang/String;
    :pswitch_25
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 467
    .local v84, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 468
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 473
    .end local v84           #msg:Ljava/lang/String;
    :pswitch_26
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v82, 0x1

    .line 475
    .local v82, managed:Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 476
    .restart local v86       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v76

    .line 478
    .restart local v76       #fd:Landroid/os/ParcelFileDescriptor;
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v82

    move-object/from16 v2, v86

    move-object/from16 v3, v76

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 479
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 474
    .end local v76           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v82           #managed:Z
    .end local v86           #path:Ljava/lang/String;
    :cond_1d
    const/16 v82, 0x0

    goto :goto_1d

    .line 476
    .restart local v82       #managed:Z
    .restart local v86       #path:Ljava/lang/String;
    :cond_1e
    const/16 v76, 0x0

    goto :goto_1e

    .line 483
    .end local v82           #managed:Z
    .end local v86           #path:Ljava/lang/String;
    :pswitch_27
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v76

    .line 485
    .restart local v76       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v67

    .line 486
    .local v67, activity:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v89

    .line 487
    .local v89, prefix:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 488
    .restart local v40       #args:[Ljava/lang/String;
    if-eqz v76, :cond_1f

    .line 489
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-object/from16 v2, v89

    move-object/from16 v3, v40

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 491
    :try_start_2
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 495
    :cond_1f
    :goto_1f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 499
    .end local v40           #args:[Ljava/lang/String;
    .end local v67           #activity:Landroid/os/IBinder;
    .end local v76           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v89           #prefix:Ljava/lang/String;
    :pswitch_28
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v95

    .line 501
    .local v95, settings:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 502
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 506
    .end local v95           #settings:Landroid/os/Bundle;
    :pswitch_29
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 508
    .local v87, pkg:Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/content/res/CompatibilityInfo;

    .line 509
    .local v74, compat:Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v74

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 510
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 514
    .end local v74           #compat:Landroid/content/res/CompatibilityInfo;
    .end local v87           #pkg:Ljava/lang/String;
    :pswitch_2a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 516
    .local v81, level:I
    move-object/from16 v0, p0

    move/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 517
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 522
    .end local v81           #level:I
    :pswitch_2b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v76

    .line 524
    .restart local v76       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/16 v72, 0x1

    .line 525
    .local v72, checkin:Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v68, 0x1

    .line 526
    .local v68, all:Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 527
    .restart local v40       #args:[Ljava/lang/String;
    const/16 v83, 0x0

    .line 528
    .restart local v83       #mi:Landroid/os/Debug$MemoryInfo;
    if-eqz v76, :cond_20

    .line 530
    :try_start_3
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v68

    move-object/from16 v3, v40

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v83

    .line 533
    :try_start_4
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 539
    :cond_20
    :goto_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    const/4 v5, 0x0

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 541
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 524
    .end local v40           #args:[Ljava/lang/String;
    .end local v68           #all:Z
    .end local v72           #checkin:Z
    .end local v83           #mi:Landroid/os/Debug$MemoryInfo;
    :cond_21
    const/16 v72, 0x0

    goto :goto_20

    .line 525
    .restart local v72       #checkin:Z
    :cond_22
    const/16 v68, 0x0

    goto :goto_21

    .line 532
    .restart local v40       #args:[Ljava/lang/String;
    .restart local v68       #all:Z
    .restart local v83       #mi:Landroid/os/Debug$MemoryInfo;
    :catchall_0
    move-exception v5

    .line 533
    :try_start_5
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 532
    :goto_23
    throw v5

    .line 546
    .end local v40           #args:[Ljava/lang/String;
    .end local v68           #all:Z
    .end local v72           #checkin:Z
    .end local v76           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v83           #mi:Landroid/os/Debug$MemoryInfo;
    :pswitch_2c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v76

    .line 548
    .restart local v76       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 549
    .restart local v40       #args:[Ljava/lang/String;
    if-eqz v76, :cond_23

    .line 551
    :try_start_6
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 554
    :try_start_7
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 560
    :cond_23
    :goto_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 553
    :catchall_1
    move-exception v5

    .line 554
    :try_start_8
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 553
    :goto_25
    throw v5

    .line 566
    .end local v40           #args:[Ljava/lang/String;
    .end local v76           #fd:Landroid/os/ParcelFileDescriptor;
    :pswitch_2d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v76

    .line 568
    .restart local v76       #fd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v40

    .line 569
    .restart local v40       #args:[Ljava/lang/String;
    if-eqz v76, :cond_24

    .line 571
    :try_start_9
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 574
    :try_start_a
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 580
    :cond_24
    :goto_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 573
    :catchall_2
    move-exception v5

    .line 574
    :try_start_b
    invoke-virtual/range {v76 .. v76}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 573
    :goto_27
    throw v5

    .line 586
    .end local v40           #args:[Ljava/lang/String;
    .end local v76           #fd:Landroid/os/ParcelFileDescriptor;
    :pswitch_2e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v91

    .line 588
    .local v91, provider:Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 597
    .end local v91           #provider:Landroid/os/IBinder;
    :pswitch_2f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->dumpMainHandlerLog()V

    .line 599
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 604
    :pswitch_30
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 606
    .local v80, isTopApp:I
    move-object/from16 v0, p0

    move/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleChangeTopApp(I)V

    .line 607
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 612
    .end local v80           #isTopApp:I
    :pswitch_31
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->getBitmapAllocation()I

    move-result v100

    .line 614
    .local v100, value:I
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 622
    .end local v100           #value:I
    :pswitch_32
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 624
    .restart local v7       #b:Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ApplicationThreadNative;->scheduleReportAppTransitionEnd(Landroid/os/IBinder;)V

    .line 625
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 632
    .end local v7           #b:Landroid/os/IBinder;
    :pswitch_33
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->dumpProviderStackTrace()V

    .line 634
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 355
    .restart local v40       #args:[Ljava/lang/String;
    .restart local v76       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v94       #service:Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto/16 :goto_17

    .line 370
    :catch_1
    move-exception v5

    goto/16 :goto_18

    .line 492
    .end local v94           #service:Landroid/os/IBinder;
    .restart local v67       #activity:Landroid/os/IBinder;
    .restart local v89       #prefix:Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_1f

    .line 534
    .end local v67           #activity:Landroid/os/IBinder;
    .end local v89           #prefix:Ljava/lang/String;
    .restart local v68       #all:Z
    .restart local v72       #checkin:Z
    .restart local v83       #mi:Landroid/os/Debug$MemoryInfo;
    :catch_3
    move-exception v20

    goto/16 :goto_23

    :catch_4
    move-exception v5

    goto/16 :goto_22

    .line 555
    .end local v68           #all:Z
    .end local v72           #checkin:Z
    .end local v83           #mi:Landroid/os/Debug$MemoryInfo;
    :catch_5
    move-exception v20

    goto/16 :goto_25

    :catch_6
    move-exception v5

    goto/16 :goto_24

    .line 575
    :catch_7
    move-exception v20

    goto/16 :goto_27

    :catch_8
    move-exception v5

    goto/16 :goto_26

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_f
        :pswitch_16
        :pswitch_19
        :pswitch_d
        :pswitch_e
        :pswitch_1a
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_8
        :pswitch_4
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_13
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_17
        :pswitch_18
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_1b
        :pswitch_2d
        :pswitch_2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_2f
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method
