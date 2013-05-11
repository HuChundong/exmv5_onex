.class public Lcom/htc/album/AlbumMain/AdapterLandingPage;
.super Lcom/htc/album/AlbumMain/AdapterDropList;
.source "AdapterLandingPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdapterLandingPage"


# instance fields
.field private mCompareWidth:I

.field private mContext:Landroid/content/Context;

.field private mContextPackageName:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLuanchItemBgHeight:I

.field private mLuanchItemBgWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/AdapterDropList;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    .line 34
    iput v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    .line 35
    iput v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mCompareWidth:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContextPackageName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 41
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/AdapterDropList;-><init>()V

    .line 31
    iput-object v6, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    .line 32
    iput-object v6, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    .line 34
    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    .line 35
    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mCompareWidth:I

    .line 36
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContextPackageName:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    .line 43
    iget-object v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iget-object v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 46
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f02000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 47
    .local v2, myphone:Landroid/graphics/drawable/Drawable;
    const v5, 0x7f020032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 49
    .local v0, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 50
    .local v3, myphoneSize:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 52
    .local v1, bgSize:I
    if-le v1, v3, :cond_0

    .line 54
    iput v1, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    .line 55
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    .line 64
    :goto_0
    const v5, 0x7f02000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x32

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mCompareWidth:I

    .line 65
    iget-object v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContextPackageName:Ljava/lang/String;

    .line 66
    return-void

    .line 59
    :cond_0
    iput v3, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    .line 60
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 79
    const/4 v10, 0x0

    .line 80
    .local v10, osDataPlugin:Z
    const/4 v15, 0x0

    .line 82
    .local v15, rplugin:Lcom/htc/opensense/plugin/TabPluginRemote;
    if-nez p2, :cond_0

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v19, v0

    const v20, 0x7f030029

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 87
    :cond_0
    const v19, 0x7f090019

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/widget/LandingPageImageView;

    .line 88
    .local v6, img:Lcom/htc/opensense2/widget/LandingPageImageView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 89
    .local v7, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    const v19, 0x7f090029

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 93
    .local v16, text:Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 94
    .local v8, lp_text:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mLuanchItemBgWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;

    .line 97
    .local v17, tmp:Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;
    if-nez v17, :cond_1

    .line 221
    :goto_0
    return-object p2

    .line 102
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabPlugin()Lcom/htc/opensense/plugin/TabPlugin;

    move-result-object v12

    .line 104
    .local v12, plugin:Lcom/htc/opensense/plugin/TabPlugin;
    if-eqz v12, :cond_3

    .line 106
    instance-of v0, v12, Lcom/htc/opensense/plugin/TabPluginRemote;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object v15, v12

    .line 108
    check-cast v15, Lcom/htc/opensense/plugin/TabPluginRemote;

    .line 111
    :cond_2
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/htc/opensense/plugin/TabPluginRemote;->onCreateAlbumListPlugin()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_3

    .line 113
    const/4 v10, 0x1

    .line 117
    :cond_3
    const/16 v18, 0x0

    .line 119
    .local v18, widthImage:I
    if-eqz v10, :cond_6

    .line 123
    :try_start_0
    invoke-virtual {v15}, Lcom/htc/opensense/plugin/TabPluginRemote;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual {v12}, Lcom/htc/opensense/plugin/TabPlugin;->getDrawableResSet()[I

    move-result-object v20

    const/16 v21, 0x2

    aget v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 124
    .local v13, pluginDraw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v13}, Lcom/htc/opensense2/widget/LandingPageImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 209
    .end local v13           #pluginDraw:Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mCompareWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 211
    const v19, 0x7f020032

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/htc/opensense2/widget/LandingPageImageView;->setBackgroundFixImageView(I)V

    .line 220
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :catch_0
    move-exception v5

    .line 129
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Lcom/htc/opensense/plugin/TabPluginRemote;->getLogoRes()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 130
    .local v4, bmp:Landroid/graphics/Bitmap;
    if-nez v4, :cond_5

    .line 132
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/htc/opensense2/widget/LandingPageImageView;->setImageResource(I)V

    goto :goto_1

    .line 136
    :cond_5
    invoke-virtual {v6, v4}, Lcom/htc/opensense2/widget/LandingPageImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v18

    goto :goto_1

    .line 143
    .end local v4           #bmp:Landroid/graphics/Bitmap;
    .end local v5           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v9, 0x0

    .line 144
    .local v9, nResDrawable:I
    const/4 v14, 0x0

    .line 148
    .local v14, res:Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getDrawableResSet()[I

    move-result-object v19

    const/16 v20, 0x2

    aget v9, v19, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    :goto_3
    if-eqz v9, :cond_4

    .line 157
    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getSubPackageName()Ljava/lang/String;

    move-result-object v11

    .line 161
    .local v11, pkgName:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContextPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v14

    .line 175
    :goto_4
    const/4 v13, 0x0

    .line 178
    .restart local v13       #pluginDraw:Landroid/graphics/drawable/Drawable;
    :try_start_3
    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v13

    .line 192
    :cond_7
    :goto_5
    if-eqz v13, :cond_4

    .line 194
    :try_start_4
    invoke-virtual {v6, v13}, Lcom/htc/opensense2/widget/LandingPageImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    goto :goto_1

    .line 150
    .end local v11           #pkgName:Ljava/lang/String;
    .end local v13           #pluginDraw:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v5

    .line 152
    .restart local v5       #e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_3

    .line 165
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v11       #pkgName:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContextPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    goto :goto_4

    .line 171
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    goto :goto_4

    .line 180
    .restart local v13       #pluginDraw:Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v5

    .line 182
    .local v5, e:Landroid/content/res/Resources$NotFoundException;
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v19, :cond_a

    const-string v19, "AdapterLandingPage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[AdapterLandingPage][getView] mContextPackageName: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContextPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pkgName: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Resources.NotFoundException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_a
    const/16 v19, 0x1

    const-string v20, "com.htc.album-com.htc.album.TabPluginDevice.TabPluginDevice"

    invoke-virtual/range {v17 .. v17}, Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;->getTabTag()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryLandingMyphone(Landroid/content/Context;)I

    move-result v9

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 189
    :cond_b
    sget-boolean v19, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v19, :cond_7

    const-string v19, "AdapterLandingPage"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[AdapterLandingPage][getView] get new resource id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_5

    .line 198
    .end local v5           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v13           #pluginDraw:Landroid/graphics/drawable/Drawable;
    :catch_3
    move-exception v5

    .line 201
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 215
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #nResDrawable:I
    .end local v11           #pkgName:Ljava/lang/String;
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_c
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/htc/opensense2/widget/LandingPageImageView;->setBackgroundFixImageView(I)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mInflater:Landroid/view/LayoutInflater;

    .line 227
    iput-object v0, p0, Lcom/htc/album/AlbumMain/AdapterLandingPage;->mContext:Landroid/content/Context;

    .line 228
    return-void
.end method

.method public setAdapterList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, plugins:Ljava/util/List;,"Ljava/util/List<Lcom/htc/album/AlbumMain/LandingPageCacheThread$TabPluginFileCache;>;"
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/htc/album/AlbumMain/AdapterDropList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/AdapterLandingPage;->notifyDataSetChanged()V

    .line 74
    return-void
.end method
