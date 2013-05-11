.class public final Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;
.super Lcom/htc/wrap/android/provider/HtcWrapSettings$NameValueTable;
.source "HtcWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profile"
.end annotation


# static fields
.field public static final CALL_METHOD_GET_PROFILE:Ljava/lang/String; = "GET_profile"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static MONITOR_KEYS:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYS_PROP_SETTING_VERSION:Ljava/lang/String; = "sys.settings_profile_version"

.field private static final TAG:Ljava/lang/String;

.field private static sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->TAG:Ljava/lang/String;

    .line 4352
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->DEBUG:Z

    .line 4362
    const-string v0, "content://settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 4373
    sput-object v2, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    .line 4375
    sput-object v2, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->MONITOR_KEYS:Ljava/util/HashSet;

    .line 4379
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 4380
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->MONITOR_KEYS:Ljava/util/HashSet;

    .line 4383
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4347
    invoke-direct {p0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$NameValueTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "resolver"
    .parameter "name"

    .prologue
    .line 4395
    const-class v1, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    if-nez v0, :cond_0

    .line 4396
    new-instance v0, Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    const-string v2, "sys.settings_profile_version"

    sget-object v3, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_profile"

    invoke-direct {v0, v2, v3, v4}, Lcom/htc/wrap/android/provider/Settings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    .line 4400
    :cond_0
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->sNameValueCache:Lcom/htc/wrap/android/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1}, Lcom/htc/wrap/android/provider/Settings$NameValueCache;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 4395
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "resolver"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 4414
    sget-object v0, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, p1, p2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Profile;->putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
