.class public final enum Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;
.super Ljava/lang/Enum;
.source "HtcSong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdk/service/cloudstorage/HtcSong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTCSONG_STATUS_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum ABORT:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum CRASH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum DISK_ERR:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum DONE:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum MEDIA_UNMOUNTED:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum NETWORK_FAILED:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum TASK_DONE:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum TIMEOUT:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

.field public static final enum UNLINKED:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "UNDEF"

    invoke-direct {v0, v1, v3}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "ABORT"

    invoke-direct {v0, v1, v4}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->ABORT:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "CRASH"

    invoke-direct {v0, v1, v5}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->CRASH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v6}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->DONE:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "TASK_DONE"

    invoke-direct {v0, v1, v7}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->TASK_DONE:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->TIMEOUT:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "DISK_ERR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->DISK_ERR:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "MEDIA_UNMOUNTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->MEDIA_UNMOUNTED:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "UNLINKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->UNLINKED:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    const-string v1, "NETWORK_FAILED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->NETWORK_FAILED:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->ABORT:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->CRASH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->DONE:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->TASK_DONE:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->TIMEOUT:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->DISK_ERR:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->MEDIA_UNMOUNTED:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->UNLINKED:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->NETWORK_FAILED:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    invoke-virtual {v0}, [Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_STATUS_ID;

    return-object v0
.end method
