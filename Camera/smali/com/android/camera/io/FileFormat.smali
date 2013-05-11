.class public final enum Lcom/android/camera/io/FileFormat;
.super Ljava/lang/Enum;
.source "FileFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/io/FileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/io/FileFormat;

.field public static final enum Jpeg:Lcom/android/camera/io/FileFormat;

.field public static final enum Jps:Lcom/android/camera/io/FileFormat;

.field public static final enum Mpeg4:Lcom/android/camera/io/FileFormat;

.field public static final enum Mpeg4For3D:Lcom/android/camera/io/FileFormat;

.field public static final enum Mpo:Lcom/android/camera/io/FileFormat;

.field public static final enum ThreeGPP:Lcom/android/camera/io/FileFormat;


# instance fields
.field public final fileNameExtension:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/android/camera/io/FileFormat;

    const-string v1, "Jpeg"

    const-string v2, "image/jpeg"

    const-string v3, ".jpg"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    new-instance v0, Lcom/android/camera/io/FileFormat;

    const-string v1, "Jps"

    const-string v2, "image/jps"

    const-string v3, ".jps"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/io/FileFormat;->Jps:Lcom/android/camera/io/FileFormat;

    new-instance v0, Lcom/android/camera/io/FileFormat;

    const-string v1, "Mpo"

    const-string v2, "image/mpo"

    const-string v3, ".mpo"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/io/FileFormat;->Mpo:Lcom/android/camera/io/FileFormat;

    new-instance v0, Lcom/android/camera/io/FileFormat;

    const-string v1, "Mpeg4"

    const-string v2, "video/mp4"

    const-string v3, ".mp4"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/android/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/io/FileFormat;->Mpeg4:Lcom/android/camera/io/FileFormat;

    new-instance v0, Lcom/android/camera/io/FileFormat;

    const-string v1, "Mpeg4For3D"

    const-string v2, "video/mp4-3d"

    const-string v3, ".mp4"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/android/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/io/FileFormat;->Mpeg4For3D:Lcom/android/camera/io/FileFormat;

    new-instance v0, Lcom/android/camera/io/FileFormat;

    const-string v1, "ThreeGPP"

    const/4 v2, 0x5

    const-string v3, "video/3gpp"

    const-string v4, ".3gp"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/io/FileFormat;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/io/FileFormat;->ThreeGPP:Lcom/android/camera/io/FileFormat;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/camera/io/FileFormat;

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jps:Lcom/android/camera/io/FileFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/io/FileFormat;->Mpo:Lcom/android/camera/io/FileFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/io/FileFormat;->Mpeg4:Lcom/android/camera/io/FileFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/camera/io/FileFormat;->Mpeg4For3D:Lcom/android/camera/io/FileFormat;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/io/FileFormat;->ThreeGPP:Lcom/android/camera/io/FileFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/io/FileFormat;->$VALUES:[Lcom/android/camera/io/FileFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/camera/io/FileFormat;->fileNameExtension:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/io/FileFormat;
    .locals 1

    const-class v0, Lcom/android/camera/io/FileFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/FileFormat;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/io/FileFormat;
    .locals 1

    sget-object v0, Lcom/android/camera/io/FileFormat;->$VALUES:[Lcom/android/camera/io/FileFormat;

    invoke-virtual {v0}, [Lcom/android/camera/io/FileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/io/FileFormat;

    return-object v0
.end method


# virtual methods
.method public isImage()Z
    .locals 3

    const/4 v2, 0x6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isVideo()Z
    .locals 3

    const/4 v2, 0x6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
