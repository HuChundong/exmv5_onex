.class abstract Lcom/android/server/HtcPowerSaver$Feature;
.super Ljava/lang/Object;
.source "HtcPowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcPowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Feature"
.end annotation


# instance fields
.field private final DEFAULT_SWITCH_VALUE:Z

.field private final KEY_FEATURE_SWITCH:Ljava/lang/String;

.field private final KEY_FEATURE_SYSPROP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mApplied:Z

.field final synthetic this$0:Lcom/android/server/HtcPowerSaver;


# direct methods
.method constructor <init>(Lcom/android/server/HtcPowerSaver;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "feature"
    .parameter "switchKey"
    .parameter "switchValue"
    .parameter "sysProp"

    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/server/HtcPowerSaver$Feature;->this$0:Lcom/android/server/HtcPowerSaver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcPowerSaver-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    .line 622
    iput-object p3, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    .line 623
    iput-boolean p4, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    .line 624
    iput-object p5, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    .line 625
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->updateSystemProperties()V

    .line 626
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcPowerSaver$Feature;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->apply()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/HtcPowerSaver$Feature;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->restore()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/HtcPowerSaver$Feature;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private apply()Z
    .locals 2

    .prologue
    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    .line 681
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->saveSystemSettings()I

    .line 683
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->applyPowerSaverSettings()I

    .line 686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    .line 687
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Applied."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->updateSystemProperties()V

    .line 694
    iget-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    return v0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Not enabled. Skip applying."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v2, 0x0

    .line 629
    if-nez p1, :cond_0

    .line 630
    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v4, "getSettingsSharedPreferences: Context is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_0
    return-object v2

    .line 635
    :cond_0
    :try_start_0
    const-string v3, "com.android.settings"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 640
    .local v0, appsContext:Landroid/content/Context;
    const-string v2, "powersaver_shared"

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    .line 636
    .end local v0           #appsContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 637
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isEnable()Z
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 653
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/HtcPowerSaver;->access$200(Lcom/android/server/HtcPowerSaver;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/HtcPowerSaver$Feature;->getSettingsSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 654
    .local v2, sp:Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    .line 655
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v5, "isEnable: Get SharedPreferences fail."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_0
    return v6

    .line 658
    :cond_0
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 659
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v3, 0x0

    .line 664
    .local v3, value:I
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/HtcPowerSaver;->access$200(Lcom/android/server/HtcPowerSaver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 666
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    invoke-static {v0, v4, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 667
    if-ne v3, v9, :cond_3

    .line 668
    iget-object v7, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEnable: Failed to get value \""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\", use default = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    if-eqz v4, :cond_1

    const-string v4, "true"

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-boolean v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->DEFAULT_SWITCH_VALUE:Z

    if-eqz v4, :cond_2

    move v3, v5

    .line 673
    :goto_2
    if-ne v3, v5, :cond_4

    :goto_3
    move v6, v5

    goto :goto_0

    .line 668
    :cond_1
    const-string v4, "false"

    goto :goto_1

    :cond_2
    move v3, v6

    .line 669
    goto :goto_2

    .line 671
    :cond_3
    iget-object v4, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEnable: Get value \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SWITCH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\"="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    move v5, v6

    .line 673
    goto :goto_3
.end method

.method private restore()V
    .locals 2

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->this$0:Lcom/android/server/HtcPowerSaver;

    #getter for: Lcom/android/server/HtcPowerSaver;->mBootNotify:Z
    invoke-static {v0}, Lcom/android/server/HtcPowerSaver;->access$300(Lcom/android/server/HtcPowerSaver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/HtcPowerSaver$Feature;->restoreSystemSettings()I

    .line 703
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    .line 704
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Restored."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_0
    invoke-direct {p0}, Lcom/android/server/HtcPowerSaver$Feature;->updateSystemProperties()V

    .line 709
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    const-string v1, "Not enabled. Skip restoring."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSystemProperties()V
    .locals 4

    .prologue
    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    new-instance v2, Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->mApplied:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/HtcPowerSaver$Feature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSystemProperties: Unable to set SystemProperties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/HtcPowerSaver$Feature;->KEY_FEATURE_SYSPROP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected abstract applyPowerSaverSettings()I
.end method

.method protected abstract restoreSystemSettings()I
.end method

.method protected abstract saveSystemSettings()I
.end method
