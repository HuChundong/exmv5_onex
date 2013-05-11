.class public final enum Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;
.super Ljava/lang/Enum;
.source "HtcSong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdk/service/cloudstorage/HtcSong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTCSONG_PROPERTY_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

.field public static final enum ALBUM_ART:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

.field public static final enum ALBUM_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

.field public static final enum ARTIST_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

.field public static final enum LOCAL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

.field public static final enum MIME_TYPE:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

.field public static final enum TRACKFILE_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

.field public static final enum TRACK_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

.field public static final enum URL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    const-string v1, "TRACK_NAME"

    invoke-direct {v0, v1, v3}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->TRACK_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    const-string v1, "TRACKFILE_NAME"

    invoke-direct {v0, v1, v4}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->TRACKFILE_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    const-string v1, "ALBUM_NAME"

    invoke-direct {v0, v1, v5}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->ALBUM_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    const-string v1, "ARTIST_NAME"

    invoke-direct {v0, v1, v6}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->ARTIST_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    const-string v1, "MIME_TYPE"

    invoke-direct {v0, v1, v7}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->MIME_TYPE:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    const-string v1, "LOCAL_PATH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->LOCAL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    const-string v1, "URL_PATH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->URL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    new-instance v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    const-string v1, "ALBUM_ART"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->ALBUM_ART:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->TRACK_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->TRACKFILE_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->ALBUM_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->ARTIST_NAME:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->MIME_TYPE:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->LOCAL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->URL_PATH:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->ALBUM_ART:Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    return-object v0
.end method

.method public static values()[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->$VALUES:[Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    invoke-virtual {v0}, [Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sdk/service/cloudstorage/HtcSong$HTCSONG_PROPERTY_ID;

    return-object v0
.end method
