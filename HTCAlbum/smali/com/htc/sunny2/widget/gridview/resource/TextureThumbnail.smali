.class public Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;
.super Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;
.source "TextureThumbnail.java"


# static fields
.field public static final NAME_TEXTUREE_3D:Ljava/lang/String; = "NAME_TEXTUREE_3D"

.field public static final NAME_TEXTUREE_ARROW_DOWN:Ljava/lang/String; = "NAME_TEXTUREE_ARROW_DOWN"

.field public static final NAME_TEXTUREE_BESTSHOT:Ljava/lang/String; = "NAME_TEXTUREE_BESTSHOT"

.field public static final NAME_TEXTUREE_BURSTSHOT:Ljava/lang/String; = "NAME_TEXTUREE_BURSTSHOT"

.field public static final NAME_TEXTUREE_DELETE:Ljava/lang/String; = "NAME_TEXTUREE_DELETE"

.field public static final NAME_TEXTUREE_DRM:Ljava/lang/String; = "NAME_TEXTUREE_DRM"

.field public static final NAME_TEXTUREE_DRM_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_DRM_CORRUPT"

.field public static final NAME_TEXTUREE_IMAGE_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_IMAGE_CORRUPT"

.field public static final NAME_TEXTUREE_INKED:Ljava/lang/String; = "NAME_TEXTUREE_INKED"

.field public static final NAME_TEXTUREE_PICKED:Ljava/lang/String; = "NAME_TEXTUREE_PICKED"

.field public static final NAME_TEXTUREE_PLAYABLE:Ljava/lang/String; = "NAME_TEXTUREE_PLAYABLE"

.field public static final NAME_TEXTUREE_SELECTED:Ljava/lang/String; = "NAME_TEXTUREE_SELECTED"

.field public static final NAME_TEXTUREE_UNPICKED:Ljava/lang/String; = "NAME_TEXTUREE_UNPICKED"

.field public static final NAME_TEXTUREE_VIDEO_CORRUPT:Ljava/lang/String; = "NAME_TEXTUREE_VIDEO_CORRUPT"

.field public static final NAME_TEXTURE_BACKGROUND_DARK:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_DARK"

.field public static final NAME_TEXTURE_BACKGROUND_LIGHT:Ljava/lang/String; = "NAME_TEXTURE_BACKGROUND_LIGHT"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/htc/sunnyCore/widget/gridview/resource/SharedTexture;-><init>()V

    .line 21
    const-string v0, "TextureThumbnail"

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->LOG_TAG:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    .line 57
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v1, "NAME_TEXTURE_BACKGROUND_DARK"

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryBGLoadingDark(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemHeight()I

    move-result v4

    invoke-static {p1, v2, v3, v4}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method protected getItemHeight()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method protected getItemWidth()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/htc/sunny2/widget/gridview/resource/ParamsGridItem;->GRID_DIMENSION:I

    return v0
.end method

.method public getTexture(Ljava/lang/String;)Lcom/htc/sunnyCore/Texture;
    .locals 6
    .parameter "name"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunnyCore/Texture;

    .line 139
    .local v1, t:Lcom/htc/sunnyCore/Texture;
    if-nez v1, :cond_0

    .line 141
    const-string v2, "NAME_TEXTUREE_BURSTSHOT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x7f020026

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_BURSTSHOT"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    :goto_0
    return-object v1

    .line 146
    :cond_1
    const-string v2, "NAME_TEXTUREE_BESTSHOT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x7f02002c

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_BESTSHOT"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    :cond_2
    const-string v2, "NAME_TEXTUREE_PLAYABLE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x208008b

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_PLAYABLE"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_3
    const-string v2, "NAME_TEXTUREE_DELETE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 157
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x20800f3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_DELETE"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_4
    const-string v2, "NAME_TEXTUREE_PICKED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Checkbox_on(Landroid/content/Context;)I

    move-result v0

    .line 163
    .local v0, resid:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_PICKED"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    .end local v0           #resid:I
    :cond_5
    const-string v2, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 168
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Checkbox_off(Landroid/content/Context;)I

    move-result v0

    .line 169
    .restart local v0       #resid:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_UNPICKED"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 173
    .end local v0           #resid:I
    :cond_6
    const-string v2, "NAME_TEXTURE_BACKGROUND_LIGHT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 174
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GalleryBGLoading(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTURE_BACKGROUND_LIGHT"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 180
    :cond_7
    const-string v2, "NAME_TEXTUREE_IMAGE_CORRUPT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 181
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x7f020024

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_IMAGE_CORRUPT"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 185
    :cond_8
    const-string v2, "NAME_TEXTUREE_VIDEO_CORRUPT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 186
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x7f020022

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_VIDEO_CORRUPT"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 190
    :cond_9
    const-string v2, "NAME_TEXTUREE_DRM_CORRUPT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 191
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x7f02001d

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_DRM_CORRUPT"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 195
    :cond_a
    const-string v2, "NAME_TEXTUREE_3D"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 196
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x7f020025

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_3D"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 200
    :cond_b
    const-string v2, "NAME_TEXTUREE_INKED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 201
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x7f020035

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_INKED"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 205
    :cond_c
    const-string v2, "NAME_TEXTUREE_ARROW_DOWN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 206
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x7f02001e

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_ARROW_DOWN"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 210
    :cond_d
    const-string v2, "NAME_TEXTUREE_DRM"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 211
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    const v3, 0x7f020029

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;I)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 212
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_DRM"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 215
    :cond_e
    const-string v2, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_GridViewSelector(Landroid/content/Context;)I

    move-result v0

    .line 217
    .restart local v0       #resid:I
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->getItemHeight()I

    move-result v4

    invoke-static {v2, v0, v3, v4}, Lcom/htc/sunnyCore/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunnyCore/Texture;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    const-string v3, "NAME_TEXTUREE_SELECTED"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 228
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->mContext:Landroid/content/Context;

    .line 230
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

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

    .line 232
    .local v1, t:Lcom/htc/sunnyCore/Texture;
    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1}, Lcom/htc/sunnyCore/Texture;->release()V

    goto :goto_0

    .line 235
    .end local v1           #t:Lcom/htc/sunnyCore/Texture;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/resource/TextureThumbnail;->textureSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 236
    return-void
.end method
