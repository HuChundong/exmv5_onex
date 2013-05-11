.class public Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;
.super Ljava/lang/Object;
.source "PickerLandingPageManager.java"

# interfaces
.implements Lcom/htc/album/picker/LandingPagePicker/IPickerLandingPageParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickerLandingPageParameter"
.end annotation


# instance fields
.field private mAlbumId:Ljava/lang/String;

.field private mAlbumName:Ljava/lang/String;

.field private mBundle:Landroid/os/Bundle;

.field private mIsAlbumPicker:Z

.field private mIsDoCrop:Z

.field private mIsFilterPhotoOfMe:Z

.field private mIsImageOnly:Z

.field private mIsSingleItemPicker:Z

.field private mIsVideoOnly:Z

.field private mIsWallpaperCrop:Z

.field private mMimeType:Ljava/lang/String;

.field private mPhotoId:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mBundle:Landroid/os/Bundle;

    .line 171
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsAlbumPicker:Z

    .line 172
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsSingleItemPicker:Z

    .line 173
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsDoCrop:Z

    .line 174
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsWallpaperCrop:Z

    .line 175
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsImageOnly:Z

    .line 176
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsVideoOnly:Z

    .line 177
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsFilterPhotoOfMe:Z

    .line 179
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mServiceName:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mAlbumName:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mUserId:Ljava/lang/String;

    .line 182
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mAlbumId:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mPhotoId:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public enableAlbumPicker()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsAlbumPicker:Z

    .line 189
    return-void
.end method

.method public enableDoCrop()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsDoCrop:Z

    .line 209
    return-void
.end method

.method public enableFilterPhotoOfMe()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsFilterPhotoOfMe:Z

    .line 324
    return-void
.end method

.method public enableImageOnly()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsImageOnly:Z

    .line 279
    return-void
.end method

.method public enableSingleItemPicker()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsSingleItemPicker:Z

    .line 199
    return-void
.end method

.method public enableVideoOnly()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsVideoOnly:Z

    .line 289
    return-void
.end method

.method public enableWallpaperCrop()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsWallpaperCrop:Z

    .line 219
    return-void
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public isAlbumPicker()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsAlbumPicker:Z

    return v0
.end method

.method public isDoCrop()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsDoCrop:Z

    return v0
.end method

.method public isFilterPhotoOfMe()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsFilterPhotoOfMe:Z

    return v0
.end method

.method public isImageOnly()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsImageOnly:Z

    return v0
.end method

.method public isPickerMode()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsAlbumPicker:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsSingleItemPicker:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleItemPicker()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsSingleItemPicker:Z

    return v0
.end method

.method public isVideoOnly()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsVideoOnly:Z

    return v0
.end method

.method public isWallpaperCrop()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsWallpaperCrop:Z

    return v0
.end method

.method public resetParameters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 333
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mBundle:Landroid/os/Bundle;

    .line 334
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsAlbumPicker:Z

    .line 335
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsSingleItemPicker:Z

    .line 336
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsDoCrop:Z

    .line 337
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsWallpaperCrop:Z

    .line 338
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsImageOnly:Z

    .line 339
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsVideoOnly:Z

    .line 340
    iput-boolean v0, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mIsFilterPhotoOfMe:Z

    .line 342
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mServiceName:Ljava/lang/String;

    .line 343
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mAlbumName:Ljava/lang/String;

    .line 344
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mUserId:Ljava/lang/String;

    .line 345
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mAlbumId:Ljava/lang/String;

    .line 346
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mPhotoId:Ljava/lang/String;

    .line 347
    iput-object v1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mMimeType:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0
    .parameter "albumId"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mAlbumId:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0
    .parameter "albumName"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mAlbumName:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mBundle:Landroid/os/Bundle;

    .line 304
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mMimeType:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setPhotoId(Ljava/lang/String;)V
    .locals 0
    .parameter "photoId"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mPhotoId:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mServiceName:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/htc/album/picker/LandingPagePicker/PickerLandingPageManager$PickerLandingPageParameter;->mUserId:Ljava/lang/String;

    .line 239
    return-void
.end method
