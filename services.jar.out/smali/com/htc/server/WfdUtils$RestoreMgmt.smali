.class public Lcom/htc/server/WfdUtils$RestoreMgmt;
.super Ljava/lang/Object;
.source "WfdUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WfdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreMgmt"
.end annotation


# static fields
.field public static final DISCONNECT_DFS:I = 0x4

.field public static final NONE:I = 0x0

.field public static final RESET_DONGLE:I = 0x6

.field public static final WIFI_AP_DISABLED:I = 0x3

.field public static final WIFI_AP_ENABLED:I = 0x2

.field public static final WIFI_CONNECTED:I = 0x5

.field public static final WIFI_ENABLED:I = 0x1

.field public static final strings:[Ljava/lang/String; = null

.field public static final varName:Ljava/lang/String; = "restore_mgmt"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WIFI_ENABLED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WIFI_AP_ENABLED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "WIFI_AP_DISABLED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DISCONNECT_DFS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WIFI_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESET_DONGLE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/server/WfdUtils$RestoreMgmt;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
