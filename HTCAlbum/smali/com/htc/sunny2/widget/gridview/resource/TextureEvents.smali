.class public Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;
.super Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
.source "TextureEvents.java"


# static fields
.field public static final NAME_TEXTUREE_IMAGE_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_IMAGE_CORRUPT"

.field public static final NAME_TEXTURE_BACKGROUND_DARK_BIG:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_DARK_BIG"

.field public static final NAME_TEXTURE_BACKGROUND_DARK_SMALL:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_DARK_SMALL"

.field public static final NAME_TEXTURE_BACKGROUND_LIGHT_BIG:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_LIGHT_BIG"

.field public static final NAME_TEXTURE_BACKGROUND_LIGHT_SMALL:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_LIGHT_SMALL"

.field public static final NAME_TEXTURE_EVENT_PLATE:Ljava/lang/String; = "NAME_TEXTURE_EVENT_PLATE"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 33
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;-><init>()V

    .line 21
    const-string v1, "TextureEvents"

    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->LOG_TAG:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    .line 47
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTUREE_IMAGE_CORRUPT"

    const v3, 0x7f020024

    invoke-static {p1, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, viewPlate:Landroid/view/View;
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {v0, v5, v5, v6, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 56
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_EVENT_PLATE"

    invoke-static {v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/view/View;)Lcom/htc/sunnyCore/Texture;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method


# virtual methods
.method public getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;
    .locals 5
    .parameter "name"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, texture:Lcom/htc/sunnyCore/Texture;
    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK_BIG"

    if-eq v1, p1, :cond_0

    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK_BIG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #texture:Lcom/htc/sunnyCore/Texture;
    check-cast v0, Lcom/htc/sunnyCore/Texture;

    .line 79
    .restart local v0       #texture:Lcom/htc/sunnyCore/Texture;
    if-nez v0, :cond_1

    .line 81
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryBGLoadingDark(Landroid/content/Context;)I

    move-result v2

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_W:I

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_H:I

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_DARK_BIG"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    :goto_0
    return-object v0

    .line 88
    :cond_2
    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK_SMALL"

    if-eq v1, p1, :cond_3

    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK_SMALL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #texture:Lcom/htc/sunnyCore/Texture;
    check-cast v0, Lcom/htc/sunnyCore/Texture;

    .line 92
    .restart local v0       #texture:Lcom/htc/sunnyCore/Texture;
    if-nez v0, :cond_1

    .line 94
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryBGLoadingDark(Landroid/content/Context;)I

    move-result v2

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_DIMENSION:I

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_DIMENSION:I

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_DARK_SMALL"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_4
    const-string v1, "NAME_TEXTURE_BACKGROUND_LIGHT_BIG"

    if-eq v1, p1, :cond_5

    const-string v1, "NAME_TEXTURE_BACKGROUND_LIGHT_BIG"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #texture:Lcom/htc/sunnyCore/Texture;
    check-cast v0, Lcom/htc/sunnyCore/Texture;

    .line 105
    .restart local v0       #texture:Lcom/htc/sunnyCore/Texture;
    if-nez v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryBGLoading(Landroid/content/Context;)I

    move-result v2

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_W:I

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsLarge;->GRID_DIMENSION_H:I

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_LIGHT_BIG"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_6
    const-string v1, "NAME_TEXTURE_BACKGROUND_LIGHT_SMALL"

    if-eq v1, p1, :cond_7

    const-string v1, "NAME_TEXTURE_BACKGROUND_LIGHT_SMALL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 117
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #texture:Lcom/htc/sunnyCore/Texture;
    check-cast v0, Lcom/htc/sunnyCore/Texture;

    .line 118
    .restart local v0       #texture:Lcom/htc/sunnyCore/Texture;
    if-nez v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryBGLoading(Landroid/content/Context;)I

    move-result v2

    sget v3, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_DIMENSION:I

    sget v4, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem4EventsSmall;->GRID_DIMENSION:I

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    const-string v2, "NAME_TEXTURE_BACKGROUND_LIGHT_SMALL"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 129
    :cond_8
    invoke-super {p0, p1}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;->getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 62
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->mContext:Landroid/content/Context;

    .line 63
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/Texture;

    .line 65
    .local v1, t:Lcom/htc/sunnyCore/Texture;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    goto :goto_0

    .line 68
    .end local v1           #t:Lcom/htc/sunnyCore/Texture;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureEvents;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 69
    return-void
.end method
