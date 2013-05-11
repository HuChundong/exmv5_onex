.class public Lcom/htc/album/SocialNetwork/ListViewAdapterComments;
.super Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;
.source "ListViewAdapterComments.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListViewAdapterComments"


# instance fields
.field private mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

.field private mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

.field protected mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mIsNewCommentEntry:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "actParent"
    .parameter "szServiceName"
    .parameter "handlerUI"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;-><init>(Landroid/app/Activity;)V

    .line 58
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    .line 60
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    .line 61
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 684
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments$1;-><init>(Lcom/htc/album/SocialNetwork/ListViewAdapterComments;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 66
    invoke-virtual {p0, p3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setUIHandler(Landroid/os/Handler;)V

    .line 67
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iput-object p2, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private getAvatarImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "szAvatarIconURL"
    .parameter "iPosition"

    .prologue
    const/4 v4, 0x1

    .line 396
    const/4 v7, 0x0

    .line 397
    .local v7, bmpAvatarImage:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Default_Avatar(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 410
    :goto_0
    return-object v7

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    const/4 v5, 0x0

    move v2, p2

    move-object v3, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->getImageBitmap(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Handler;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0
.end method

.method private getCustFixedFontSize()I
    .locals 3

    .prologue
    .line 378
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/opensense/R;->getResourceHelper(Landroid/content/Context;)Lcom/htc/opensense/res/IResourceHelper;

    move-result-object v0

    .line 379
    .local v0, getResourceHelper:Lcom/htc/opensense/res/IResourceHelper;
    sget v2, Lcom/htc/opensense/R$dimen;->list_secondary_s:I

    invoke-interface {v0, v2}, Lcom/htc/opensense/res/IResourceHelper;->getDimensionPixelSize(I)I

    move-result v1

    .line 380
    .local v1, iFixedSecondaryFontSize:I
    return v1
.end method

.method private getShareImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bmpCacheImage"

    .prologue
    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, bmpShareImage:Landroid/graphics/Bitmap;
    if-nez p1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getIconDefaultAlbum(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    :goto_0
    return-object v0

    .line 421
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->scalePhotoBitmapWidthAndHeight(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getShareImageShortSideLength(FFFZ)I
    .locals 4
    .parameter "fMaxLength"
    .parameter "fPhotoWidth"
    .parameter "fPhotoHeight"
    .parameter "isHeightLonger"

    .prologue
    const/4 v3, 0x0

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, iShortSide:I
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    cmpg-float v2, p2, v3

    if-ltz v2, :cond_0

    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    :cond_0
    move v1, v0

    .line 452
    .end local v0           #iShortSide:I
    .local v1, iShortSide:I
    :goto_0
    return v1

    .line 430
    .end local v1           #iShortSide:I
    .restart local v0       #iShortSide:I
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p4, :cond_3

    .line 432
    cmpl-float v2, p1, p3

    if-lez v2, :cond_2

    .line 434
    div-float v2, p1, p3

    div-float v2, p2, v2

    float-to-int v0, v2

    :goto_1
    move v1, v0

    .line 452
    .end local v0           #iShortSide:I
    .restart local v1       #iShortSide:I
    goto :goto_0

    .line 438
    .end local v1           #iShortSide:I
    .restart local v0       #iShortSide:I
    :cond_2
    div-float v2, p3, p1

    div-float v2, p2, v2

    float-to-int v0, v2

    goto :goto_1

    .line 443
    :cond_3
    cmpl-float v2, p1, p2

    if-lez v2, :cond_4

    .line 445
    div-float v2, p1, p2

    div-float v2, p3, v2

    float-to-int v0, v2

    goto :goto_1

    .line 449
    :cond_4
    div-float v2, p2, p1

    div-float v2, p3, v2

    float-to-int v0, v2

    goto :goto_1
.end method

.method private requestForceUpdateCommentsByMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, bNeedForceUpdate:Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    const/4 v0, 0x1

    .line 633
    :cond_0
    const-string v1, "ListViewAdapterComments"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ListViewAdapterComments][requestForceUpdateCommentsByMessage]: need force update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    if-ne v4, v0, :cond_1

    .line 636
    const/16 v1, 0x4e26

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 638
    :cond_1
    return-void
.end method

.method private resetListItemBackgroundAndPadding(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 386
    .local v1, paddintLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 387
    .local v2, paddintRight:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 388
    .local v3, paddintTop:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 390
    .local v0, paddintBottom:I
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_ListViweDefaultBackground(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 391
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 392
    return-void
.end method

.method private scalePhotoBitmapWidthAndHeight(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "sharePhotoBmp"

    .prologue
    const/4 v6, 0x0

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, iScaleHeight:I
    const/4 v1, 0x0

    .line 362
    .local v1, iScaleWidth:I
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->COMMENT_MAX_SHARE_PHOTO_DIMEN:I

    int-to-float v2, v3

    .line 363
    .local v2, iShareImageMaxLength:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 365
    float-to-int v0, v2

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getShareImageShortSideLength(FFFZ)I

    move-result v1

    .line 373
    :goto_0
    invoke-static {p1, v1, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 370
    :cond_0
    float-to-int v1, v2

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getShareImageShortSideLength(FFFZ)I

    move-result v0

    goto :goto_0
.end method

.method private setEmptyData(Landroid/view/View;I)V
    .locals 2
    .parameter "convertView"
    .parameter "nPos"

    .prologue
    .line 353
    const v1, 0x7f090012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 354
    .local v0, viewTextEmpty:Lcom/htc/widget/HtcListItem1LineCenteredText;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setGravityCenterHorizontal(Z)V

    .line 355
    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(I)V

    .line 356
    return-void
.end method

.method private setHeaderData(Landroid/view/View;I)V
    .locals 12
    .parameter "convertView"
    .parameter "nPos"

    .prologue
    const/4 v5, 0x0

    .line 286
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getItem()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;

    .line 287
    .local v9, headerCache:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->resetListItemBackgroundAndPadding(Landroid/view/View;)V

    .line 290
    sget v0, Lcom/htc/opensense/R$id;->avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/QuickContactBadge;

    .line 291
    .local v6, avatarImage:Lcom/htc/widget/QuickContactBadge;
    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->getOwnerAvatarURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getAvatarImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 292
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0}, Lcom/htc/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getShareImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 298
    .local v4, sharePhotoBmp:Landroid/graphics/Bitmap;
    sget v0, Lcom/htc/opensense/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 299
    .local v8, contentName:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->getPhotoName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedPhotoContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    sget v0, Lcom/htc/opensense/R$id;->subcontent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 307
    .local v7, contentDateTime:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCustFixedFontSize()I

    move-result v10

    .line 308
    .local v10, iCustDateTimeFontSize:I
    if-eqz v10, :cond_0

    .line 310
    int-to-float v0, v10

    invoke-virtual {v7, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {v9}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->getTime()J

    move-result-wide v1

    invoke-virtual {v9, v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperCommentHeader;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, strDateTime:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 315
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_1
    return-void
.end method

.method private setListData(Landroid/view/View;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;)V
    .locals 8
    .parameter "convertView"
    .parameter "nPos"
    .parameter "comment"

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->resetListItemBackgroundAndPadding(Landroid/view/View;)V

    .line 324
    sget v4, Lcom/htc/opensense/R$id;->avatar:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/QuickContactBadge;

    .line 325
    .local v0, avatarImage:Lcom/htc/widget/QuickContactBadge;
    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerAvatarURL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getAvatarImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    sget v4, Lcom/htc/opensense/R$id;->content:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 328
    .local v2, contentName:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getOwnerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getComment()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/htc/opensense2/album/util/HelperUtil;->getFormatedComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    sget v4, Lcom/htc/opensense/R$id;->subcontent:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 335
    .local v1, contentDateTime:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getCustFixedFontSize()I

    move-result v3

    .line 336
    .local v3, iCustDateTimeFontSize:I
    if-eqz v3, :cond_0

    .line 338
    const/4 v4, 0x0

    int-to-float v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    :cond_0
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    invoke-virtual {p3}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getTime()J

    move-result-wide v5

    invoke-virtual {p3, v4, v5, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    return-void
.end method

.method private setLoadingData(Landroid/view/View;I)V
    .locals 5
    .parameter "convertView"
    .parameter "nPos"

    .prologue
    .line 345
    const v1, 0x7f090012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 346
    .local v0, viewTextLoading:Lcom/htc/widget/HtcListItem1LineCenteredText;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setGravityCenterHorizontal(Z)V

    .line 347
    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(I)V

    .line 348
    new-instance v1, Lcom/htc/widget/HtcProgressBar;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    const/4 v3, 0x0

    const v4, 0x1010288

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/widget/HtcProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setView(Landroid/view/View;)V

    .line 349
    return-void
.end method


# virtual methods
.method public getCommentCacher()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    return-object v0
.end method

.method public getCommentHeader()Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x1

    .line 124
    .local v0, nCount:I
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_0
    return v0
.end method

.method public getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    return-object v0
.end method

.method public getImageProvider()Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, obj:Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 139
    .end local v0           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 136
    .restart local v0       #obj:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 145
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSNManager()Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "nPos"
    .parameter "convertView"
    .parameter "arg2"

    .prologue
    const v7, 0x7f03001f

    const/4 v6, 0x0

    .line 192
    const/4 v2, 0x0

    .line 194
    .local v2, comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    if-nez p1, :cond_4

    const/4 v1, 0x1

    .line 197
    .local v1, bHeader:Z
    :goto_0
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;

    .line 199
    .restart local v2       #comment:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;
    :cond_0
    const/4 v3, 0x0

    .line 200
    .local v3, currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v3

    .line 202
    :cond_1
    if-nez p2, :cond_9

    .line 204
    if-eqz v1, :cond_5

    .line 206
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/htc/opensense/R$layout;->htc_list_item_social_network:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 258
    :cond_2
    :goto_1
    if-eqz v1, :cond_e

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_SINGLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 261
    :goto_2
    if-eqz v1, :cond_f

    .line 263
    invoke-direct {p0, p2, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setHeaderData(Landroid/view/View;I)V

    .line 281
    :cond_3
    :goto_3
    return-object p2

    .line 194
    .end local v1           #bHeader:Z
    .end local v3           #currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 208
    .restart local v1       #bHeader:Z
    .restart local v3       #currentSeparatorTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_5
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v3, v4, :cond_6

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v3, v4, :cond_7

    .line 211
    :cond_6
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/htc/opensense/R$layout;->htc_list_item_social_network:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 213
    :cond_7
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v3, v4, :cond_8

    .line 215
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 217
    :cond_8
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v3, v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 224
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/SeparatorTag;

    .line 226
    .local v0, aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    if-eqz v1, :cond_a

    .line 228
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_TOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v0, v4, :cond_2

    .line 230
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/htc/opensense/R$layout;->htc_list_item_social_network:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 233
    :cond_a
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v3, v4, :cond_b

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v3, v4, :cond_c

    .line 236
    :cond_b
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v0, v4, :cond_2

    .line 239
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/htc/opensense/R$layout;->htc_list_item_social_network:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 242
    :cond_c
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v3, v4, :cond_d

    .line 244
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v0, v4, :cond_2

    .line 246
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 249
    :cond_d
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v3, v4, :cond_2

    .line 251
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v0, v4, :cond_2

    .line 253
    iget-object v4, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_1

    .line 259
    .end local v0           #aTag:Lcom/htc/opensense2/album/util/SeparatorTag;
    :cond_e
    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;->getSeparatorInfo()Lcom/htc/opensense2/album/util/SeparatorTag;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 265
    :cond_f
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_BREAKTOP:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-eq v3, v4, :cond_10

    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_MIDDLE:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v3, v4, :cond_11

    .line 268
    :cond_10
    invoke-direct {p0, p2, p1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setListData(Landroid/view/View;ILcom/htc/opensense2/album/SocialNetworkManager/WrapperComment;)V

    goto/16 :goto_3

    .line 270
    :cond_11
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_LOADER:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v3, v4, :cond_12

    .line 272
    invoke-direct {p0, p2, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setLoadingData(Landroid/view/View;I)V

    goto/16 :goto_3

    .line 274
    :cond_12
    sget-object v4, Lcom/htc/opensense2/album/util/SeparatorTag;->SEPARABLE_EMPTY:Lcom/htc/opensense2/album/util/SeparatorTag;

    if-ne v3, v4, :cond_3

    .line 276
    invoke-direct {p0, p2, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setEmptyData(Landroid/view/View;I)V

    goto/16 :goto_3
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 150
    const/4 v0, 0x1

    .line 153
    .local v0, bResult:Z
    if-nez p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->getCommentSize()I

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->isEnabled(I)Z

    move-result v0

    :cond_2
    move v1, v0

    .line 165
    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 72
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    iget-object v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct {v0, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 73
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;-><init>()V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsHeader:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsHeader;

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->clearAllCache()V

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    .line 95
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onErrorConnection()V
    .locals 3

    .prologue
    .line 606
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][onErrorConnection]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/16 v0, 0x2728

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 608
    return-void
.end method

.method public onErrorNoList(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 611
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][onErrorNoList]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 624
    :goto_0
    return-void

    .line 615
    :cond_0
    const/16 v0, 0x2728

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 616
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->refreshCommentList()Z

    .line 619
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 620
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setFirstRequest(Z)V

    .line 623
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->requestForceUpdateCommentsByMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 641
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 668
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onMessageHandler(Landroid/os/Message;)V

    .line 671
    :goto_0
    return-void

    .line 644
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onRequestNewEntryComments()V

    goto :goto_0

    .line 647
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onRequestComments(Landroid/os/Message;)V

    goto :goto_0

    .line 650
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onRequestAddComment(Landroid/os/Message;)V

    goto :goto_0

    .line 653
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncConnection()V

    goto :goto_0

    .line 656
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncListComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 659
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onSyncPhotoComplete(Landroid/os/Message;)V

    goto :goto_0

    .line 662
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onErrorConnection()V

    goto :goto_0

    .line 665
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onErrorNoList(Landroid/os/Message;)V

    goto :goto_0

    .line 641
    nop

    :sswitch_data_0
    .sparse-switch
        0x274c -> :sswitch_6
        0x2761 -> :sswitch_7
        0x4e26 -> :sswitch_1
        0x4e30 -> :sswitch_2
        0x4e4e -> :sswitch_0
        0x4e84 -> :sswitch_3
        0x4e89 -> :sswitch_5
        0x4e92 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 83
    return-void
.end method

.method public onRequestAddComment(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 555
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v3}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 556
    const/16 v3, 0x4e8d

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 558
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 560
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v3, 0x1

    new-array v1, v3, [Lcom/htc/opensense/social/data/Medium;

    .line 561
    .local v1, medium:[Lcom/htc/opensense/social/data/Medium;
    const-string v3, "photo_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/social/data/Medium;

    aput-object v3, v1, v5

    .line 562
    const-string v3, "comment_update"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, szComment:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    aget-object v4, v1, v5

    invoke-virtual {v3, v4, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->setPhotoComment(Lcom/htc/opensense/social/data/Medium;Ljava/lang/String;)V

    .line 565
    const-string v3, "ListViewAdapterComments"

    const-string v4, "[ListViewAdapterComments][onRequestAddComment]: "

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public onRequestComments(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 514
    const-string v4, "ListViewAdapterComments"

    const-string v5, "[ListViewAdapterComments][onRequestComments]: "

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, bIsForceUpdate:Z
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 519
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 525
    :cond_0
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v5}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->isFirstRequest()Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 527
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 528
    const/16 v4, 0x4e8d

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 534
    :cond_1
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-nez v4, :cond_3

    .line 536
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v4, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->requestCommentList(Z)Z

    .line 549
    :cond_2
    :goto_0
    return-void

    .line 540
    :cond_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getItemRequest()Ljava/lang/Object;

    move-result-object v2

    .line 541
    .local v2, obj:Ljava/lang/Object;
    instance-of v4, v2, Landroid/content/Intent;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 543
    check-cast v1, Landroid/content/Intent;

    .line 544
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    const-string v4, "photo_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>(Lcom/htc/opensense/social/data/Medium;)V

    .line 545
    .local v3, photo:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-eqz v3, :cond_2

    .line 546
    iget-object v4, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v4, v3, v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->requestCommentList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;Z)Z

    goto :goto_0
.end method

.method public onRequestNewEntryComments()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 505
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][onRequestNewEntryComments]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    .line 509
    const/16 v0, 0x4e26

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 510
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V

    .line 79
    return-void
.end method

.method public onSyncConnection()V
    .locals 3

    .prologue
    .line 571
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][onSyncConnection]: "

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_0

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setCommentLoader()V

    .line 576
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onSyncListComplete(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 581
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][onSyncListComplete]"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/16 v0, 0x4eee

    iget v1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mUIState:I

    if-ne v0, v1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->refreshCommentList()Z

    .line 588
    const/16 v0, 0x4e8d

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 589
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->setFirstRequest(Z)V

    .line 592
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->requestForceUpdateCommentsByMessage(Landroid/os/Message;)V

    .line 594
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    if-ne v0, v1, :cond_0

    .line 596
    const/16 v0, 0x4e90

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 597
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mIsNewCommentEntry:Z

    goto :goto_0
.end method

.method public onSyncPhotoComplete(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 602
    const/16 v0, 0x4e8d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 603
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z
    .locals 4
    .parameter "dataPlugin"

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, bResult:Z
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eq v2, p1, :cond_0

    .line 103
    const-string v2, "ListViewAdapterComments"

    const-string v3, "[LivePhotoAdapterComments][setDataPlugin]: "

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getItemRequest()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 105
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "from_outside"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->setDataRequest(Ljava/lang/Object;)V

    .line 108
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 109
    iget-object v2, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mImageProvider:Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/ImageProvider;->setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V

    .line 110
    const/4 v0, 0x1

    .line 112
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return v0
.end method

.method public setScrollState(II)V
    .locals 0
    .parameter "nScrollState"
    .parameter "nFirstIndex"

    .prologue
    .line 682
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 0
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 677
    return-void
.end method

.method protected syncBackgroundService(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 6
    .parameter "szService"
    .parameter "hHandler"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getDataHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->scanAvailableService(Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;)Z

    move-result v0

    if-ne v4, v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][syncBackgroundService]: no account..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/16 v0, 0x274f

    invoke-virtual {p0, v0, v5, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isExistingAccount()Z

    move-result v0

    if-ne v4, v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->isAccountStatusChanged()Z

    move-result v0

    if-nez v0, :cond_2

    .line 470
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][syncBackgroundService]: no change just skip!!"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mCommentsCacher:Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/comments/HTCCommentsCacher;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const/16 v0, 0x4e26

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 476
    :cond_2
    const/16 v0, 0x2750

    invoke-virtual {p0, v0, v5, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0

    .line 481
    :cond_3
    const-string v0, "ListViewAdapterComments"

    const-string v1, "[ListViewAdapterComments][syncBackgroundService]: InitConnection.."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->syncActiveAccount()V

    .line 484
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v0, :cond_4

    .line 486
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(Lcom/htc/opensense/album/plugin/BaseListPlugin;)Z

    goto :goto_0

    .line 490
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->mSNManager:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-virtual {v0, v4, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->InitConnection(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/16 v0, 0x2724

    invoke-virtual {p0, v0, v5, v3}, Lcom/htc/album/SocialNetwork/ListViewAdapterComments;->onUIUpdateNotify(ILjava/lang/Object;I)V

    goto :goto_0
.end method
