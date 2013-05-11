.class public abstract Lcom/android/camera/SubsetPhotoResolutionProvider;
.super Lcom/android/camera/DefaultPhotoResolutionProvider;
.source "SubsetPhotoResolutionProvider.java"


# direct methods
.method protected constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/DefaultPhotoResolutionProvider;-><init>(Lcom/android/camera/HTCCamera;)V

    return-void
.end method

.method private getMaxPixelCount(Lcom/android/camera/CameraType;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMaxResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    if-nez v0, :cond_0

    const v1, 0x7fffffff

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method

.method private getMinPixelCount(Lcom/android/camera/CameraType;)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMinResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected getMaxResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMinResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;",
            "Lcom/android/camera/Resolution;",
            ")",
            "Lcom/android/camera/Resolution;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMaxPixelCount(Lcom/android/camera/CameraType;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMinPixelCount(Lcom/android/camera/CameraType;)I

    move-result v1

    invoke-virtual {p3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v4

    mul-int v2, v3, v4

    if-le v2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMaxResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;

    move-result-object v3

    return-object v3

    :cond_1
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMinResolution(Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object p3

    goto :goto_0
.end method

.method public getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/DefaultPhotoResolutionProvider;->getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMaxPixelCount(Lcom/android/camera/CameraType;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/camera/SubsetPhotoResolutionProvider;->getMinPixelCount(Lcom/android/camera/CameraType;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/Resolution;

    invoke-virtual {v6}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v9

    mul-int v5, v8, v9

    if-gt v5, v2, :cond_0

    if-lt v5, v3, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method
