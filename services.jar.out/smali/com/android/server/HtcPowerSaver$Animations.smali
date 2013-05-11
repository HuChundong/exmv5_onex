.class final Lcom/android/server/HtcPowerSaver$Animations;
.super Lcom/android/server/HtcPowerSaver$Feature;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Animations"
.end annotation


# instance fields
.field private final KEY_N_ANIMATION0:Ljava/lang/String;

.field private final KEY_N_ANIMATION1:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "ctx"

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Animations;->this$0:Lcom/android/server/HtcPowerSaver;

    .line 920
    const-string v2, "Animations"

    const-string v3, "powersaver_onscreen_animation"

    const/4 v4, 0x1

    const-string v5, "sys.psaver.anim"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/HtcPowerSaver$Feature;-><init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 914
    const-string v0, "psaver_normal_animation_0"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Animations;->KEY_N_ANIMATION0:Ljava/lang/String;

    .line 915
    const-string v0, "psaver_normal_animation_1"

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Animations;->KEY_N_ANIMATION1:Ljava/lang/String;

    .line 921
    iput-object p2, p0, Lcom/android/server/HtcPowerSaver$Animations;->mContext:Landroid/content/Context;

    .line 922
    return-void
.end method

.method private getSysSettings()[F
    .locals 6

    .prologue
    .line 925
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 926
    .local v2, mWindowManager:Landroid/view/IWindowManager;
    if-nez v2, :cond_0

    .line 927
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSysSettings: error at IWindowManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_0
    const/4 v0, 0x0

    .line 932
    .local v0, AnimationScales:[F
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 936
    :goto_0
    return-object v0

    .line 933
    :catch_0
    move-exception v1

    .line 934
    .local v1, e:Landroid/os/RemoteException;
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSysSettings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSysSettings([F)V
    .locals 5
    .parameter "animation"

    .prologue
    .line 940
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 941
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    if-nez v1, :cond_0

    .line 942
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Get Window Manager Servcie fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :goto_0
    return-void

    .line 946
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setAnimationScales([F)V

    .line 947
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSysSettings: animation[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", animation[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, e:Landroid/os/RemoteException;
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSysSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected applyPowerSaverSettings()I
    .locals 3

    .prologue
    .line 971
    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 972
    .local v0, mAnimationScales:[F
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$Animations;->setSysSettings([F)V

    .line 973
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applyPowerSaverSettings."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v1, 0x0

    return v1

    .line 971
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected restoreSystemSettings()I
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 979
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Animations;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Animations;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 980
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 981
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "restoreSystemSettings: Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :goto_0
    return v4

    .line 984
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 985
    .local v0, normalAnimation:[F
    const-string v2, "psaver_normal_animation_0"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    aput v2, v0, v4

    .line 986
    const/4 v2, 0x1

    const-string v3, "psaver_normal_animation_1"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    aput v3, v0, v2

    .line 987
    invoke-direct {p0, v0}, Lcom/android/server/HtcPowerSaver$Animations;->setSysSettings([F)V

    goto :goto_0

    .line 984
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected saveSystemSettings()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 955
    iget-object v2, p0, Lcom/android/server/HtcPowerSaver$Animations;->this$0:Lcom/android/server/HtcPowerSaver;

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Animations;->mContext:Landroid/content/Context;

    #calls: Lcom/android/server/HtcPowerSaver;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v2, v3}, Lcom/android/server/HtcPowerSaver;->access$500(Lcom/android/server/HtcPowerSaver;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 956
    .local v1, sp:Landroid/content/SharedPreferences;
    if-nez v1, :cond_0

    .line 957
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "saveSystemSettings: Get SharedPreferences fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_0
    return v5

    .line 960
    :cond_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Animations;->getSysSettings()[F

    move-result-object v0

    .line 961
    .local v0, animation:[F
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "psaver_normal_animation_0"

    aget v4, v0, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 962
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "psaver_normal_animation_1"

    aget v4, v0, v6

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 963
    #getter for: Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/HtcPowerSaver$Feature;->access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSystemSettings: animation[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", animation[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
