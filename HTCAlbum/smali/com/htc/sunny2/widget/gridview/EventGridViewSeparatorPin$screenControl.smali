.class public Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;
.super Ljava/lang/Object;
.source "EventGridViewSeparatorPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "screenControl"
.end annotation


# instance fields
.field public SPRITE_LAYER_BACKGROUND:I

.field public SPRITE_LAYER_COUNT:I

.field public SPRITE_LAYER_TEXT:I

.field public mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

.field public mNode:Lcom/htc/sunnyCore/SceneNode;

.field public mTextSprite:Lcom/htc/sunnyCore/Sprite;

.field public mTextTexture:Lcom/htc/sunnyCore/Texture;

.field public mTextViewContainer:Landroid/view/ViewGroup;

.field public mTextViewTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_BACKGROUND:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_TEXT:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->SPRITE_LAYER_COUNT:I

    .line 63
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mNode:Lcom/htc/sunnyCore/SceneNode;

    .line 65
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextSprite:Lcom/htc/sunnyCore/Sprite;

    .line 66
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextTexture:Lcom/htc/sunnyCore/Texture;

    .line 68
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mBackgroundTexture:Lcom/htc/sunnyCore/Texture;

    .line 70
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewContainer:Landroid/view/ViewGroup;

    .line 71
    iput-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$screenControl;->mTextViewTitle:Landroid/widget/TextView;

    return-void
.end method
