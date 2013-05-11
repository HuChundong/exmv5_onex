.class Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;
.super Ljava/lang/Object;
.source "GalleryFullScreenViewItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareResources"
.end annotation


# instance fields
.field drmTextBGHeight:I

.field drmTextBGWidth:I

.field drmTextHeight:I

.field drmTextWidth:I

.field textureCorrupt:Lcom/htc/sunnyCore/Texture;

.field textureDrm:Lcom/htc/sunnyCore/Texture;

.field textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

.field textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

.field textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

.field textureLoading:Lcom/htc/sunnyCore/Texture;

.field texturePlayable:Lcom/htc/sunnyCore/Texture;

.field texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

.field textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 107
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->this$0:Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    .line 110
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    .line 111
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    .line 112
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    .line 113
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    .line 114
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    .line 115
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    .line 117
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    .line 118
    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    .line 122
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_WIDTH:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGWidth:I

    .line 123
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->DRM_CONSUME_RIGHT_BUTTON_HEIGHT:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextBGHeight:I

    .line 124
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextWidth:I

    .line 125
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->drmTextHeight:I

    return-void
.end method


# virtual methods
.method release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 132
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmCorrupt:Lcom/htc/sunnyCore/Texture;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 137
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureVideoCorrupt:Lcom/htc/sunnyCore/Texture;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 142
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureCorrupt:Lcom/htc/sunnyCore/Texture;

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 147
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayable:Lcom/htc/sunnyCore/Texture;

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 152
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->texturePlayableSmall:Lcom/htc/sunnyCore/Texture;

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 157
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrm:Lcom/htc/sunnyCore/Texture;

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 162
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureLoading:Lcom/htc/sunnyCore/Texture;

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_7

    .line 166
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 167
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextPressed:Lcom/htc/sunnyCore/Texture;

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_8

    .line 171
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 172
    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/GalleryFullScreenViewItem$ShareResources;->textureDrmTextUnpressed:Lcom/htc/sunnyCore/Texture;

    .line 174
    :cond_8
    return-void
.end method
