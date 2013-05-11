.class public final enum Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;
.super Ljava/lang/Enum;
.source "HtcSong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdk/service/cloudstorage/HtcSong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTCSONG_SOURCE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

.field public static final enum CLOUD_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

.field public static final enum LOCAL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

.field public static final enum UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

.field public static final enum URL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    const-string v1, "UNDEF"

    invoke-direct {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    const-string v1, "LOCAL_PATH"

    invoke-direct {v0, v1, v3}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->LOCAL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    const-string v1, "URL_PATH"

    invoke-direct {v0, v1, v4}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->URL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    const-string v1, "CLOUD_PATH"

    invoke-direct {v0, v1, v5}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->CLOUD_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->UNDEF:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->LOCAL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->URL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->CLOUD_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    invoke-virtual {v0}, [Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_SOURCE_TYPE;

    return-object v0
.end method
