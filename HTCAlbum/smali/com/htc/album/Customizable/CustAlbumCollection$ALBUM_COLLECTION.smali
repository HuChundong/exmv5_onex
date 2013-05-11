.class public final enum Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
.super Ljava/lang/Enum;
.source "CustAlbumCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/Customizable/CustAlbumCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ALBUM_COLLECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

.field public static final enum EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

.field public static final enum FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

.field public static final enum UNKNOWN:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->UNKNOWN:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    new-instance v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    const-string v1, "FOLDERS"

    invoke-direct {v0, v1, v3}, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    new-instance v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    const-string v1, "EVENTS"

    invoke-direct {v0, v1, v4}, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    sget-object v1, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->UNKNOWN:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->FOLDERS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->EVENTS:Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->$VALUES:[Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    return-object v0
.end method

.method public static values()[Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->$VALUES:[Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    invoke-virtual {v0}, [Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/album/Customizable/CustAlbumCollection$ALBUM_COLLECTION;

    return-object v0
.end method
