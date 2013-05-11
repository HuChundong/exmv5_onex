.class public final enum Lcom/android/camera/CameraStartMode;
.super Ljava/lang/Enum;
.source "CameraStartMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/CameraStartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/CameraStartMode;

.field public static final enum Album:Lcom/android/camera/CameraStartMode;

.field public static final enum ContactsPhoto:Lcom/android/camera/CameraStartMode;

.field public static final enum Generic:Lcom/android/camera/CameraStartMode;

.field public static final enum GenericService:Lcom/android/camera/CameraStartMode;

.field public static final enum GenericServiceCamcorder:Lcom/android/camera/CameraStartMode;

.field public static final enum GenericServiceCamera:Lcom/android/camera/CameraStartMode;

.field public static final enum MmsPhoto:Lcom/android/camera/CameraStartMode;

.field public static final enum MmsVideo:Lcom/android/camera/CameraStartMode;

.field public static final enum NotesPhoto:Lcom/android/camera/CameraStartMode;

.field public static final enum NotesVideo:Lcom/android/camera/CameraStartMode;

.field public static final enum SquarePhoto:Lcom/android/camera/CameraStartMode;


# instance fields
.field public final isServiceMode:Z

.field public final supportsPhotoMode:Z

.field public final supportsVideoMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v7, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "Generic"

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->Generic:Lcom/android/camera/CameraStartMode;

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "GenericService"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->GenericService:Lcom/android/camera/CameraStartMode;

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "GenericServiceCamera"

    invoke-direct {v0, v1, v11, v4, v2}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "GenericServiceCamcorder"

    invoke-direct {v0, v1, v12, v2, v4}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->GenericServiceCamcorder:Lcom/android/camera/CameraStartMode;

    new-instance v5, Lcom/android/camera/CameraStartMode;

    const-string v6, "Album"

    move v8, v2

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v5, Lcom/android/camera/CameraStartMode;->Album:Lcom/android/camera/CameraStartMode;

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "ContactsPhoto"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "SquarePhoto"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "MmsPhoto"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->MmsPhoto:Lcom/android/camera/CameraStartMode;

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "MmsVideo"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "NotesPhoto"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->NotesPhoto:Lcom/android/camera/CameraStartMode;

    new-instance v0, Lcom/android/camera/CameraStartMode;

    const-string v1, "NotesVideo"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/android/camera/CameraStartMode;->NotesVideo:Lcom/android/camera/CameraStartMode;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/camera/CameraStartMode;

    sget-object v1, Lcom/android/camera/CameraStartMode;->Generic:Lcom/android/camera/CameraStartMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericService:Lcom/android/camera/CameraStartMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/camera/CameraStartMode;->GenericServiceCamcorder:Lcom/android/camera/CameraStartMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/camera/CameraStartMode;->Album:Lcom/android/camera/CameraStartMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/CameraStartMode;->MmsPhoto:Lcom/android/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/camera/CameraStartMode;->MmsVideo:Lcom/android/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/camera/CameraStartMode;->NotesPhoto:Lcom/android/camera/CameraStartMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/camera/CameraStartMode;->NotesVideo:Lcom/android/camera/CameraStartMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/CameraStartMode;->$VALUES:[Lcom/android/camera/CameraStartMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CameraStartMode;-><init>(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    iput-boolean p4, p0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    iput-boolean p5, p0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/CameraStartMode;
    .locals 1

    const-class v0, Lcom/android/camera/CameraStartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraStartMode;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/CameraStartMode;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraStartMode;->$VALUES:[Lcom/android/camera/CameraStartMode;

    invoke-virtual {v0}, [Lcom/android/camera/CameraStartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/CameraStartMode;

    return-object v0
.end method


# virtual methods
.method public supportsAllCameraModes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraStartMode;->supportsPhotoMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
