.class Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceHolder"
.end annotation


# instance fields
.field mDrawable:Landroid/graphics/drawable/Drawable;

.field mHeight:I

.field mPaint:Landroid/graphics/Paint;

.field mSection:Ljava/lang/String;

.field mSprite:Lcom/htc/sunnyCore/Sprite;

.field mTexture:Lcom/htc/sunnyCore/Texture;

.field mWidth:I

.field final synthetic this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;II)V
    .locals 2
    .parameter
    .parameter "s"
    .parameter "t"
    .parameter "h"
    .parameter "w"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5008
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4998
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 4999
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 5001
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5002
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSection:Ljava/lang/String;

    .line 5003
    iput-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mPaint:Landroid/graphics/Paint;

    .line 5005
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mHeight:I

    .line 5006
    iput v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mWidth:I

    .line 5009
    iput-object p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 5010
    iput-object p3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 5011
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mHeight:I

    .line 5012
    iput p5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mWidth:I

    .line 5013
    return-void
.end method

.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;IILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "s"
    .parameter "t"
    .parameter "h"
    .parameter "w"
    .parameter "d"

    .prologue
    .line 5016
    invoke-direct/range {p0 .. p5}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;II)V

    .line 5017
    iput-object p6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5018
    return-void
.end method

.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;IILjava/lang/String;Landroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter "s"
    .parameter "t"
    .parameter "h"
    .parameter "w"
    .parameter "str"
    .parameter "p"

    .prologue
    .line 5021
    invoke-direct/range {p0 .. p5}, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;-><init>(Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;II)V

    .line 5022
    iput-object p6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSection:Ljava/lang/String;

    .line 5023
    iput-object p7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mPaint:Landroid/graphics/Paint;

    .line 5024
    return-void
.end method


# virtual methods
.method free()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5037
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    if-eqz v0, :cond_0

    .line 5038
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->this$1:Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    iget-object v0, v0, Lcom/htc/sunnyCore/widget/gridview/GridView;->mFastScrollerSceneNode:Lcom/htc/sunnyCore/SceneNode;

    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/SceneNode;->removeSprite(Lcom/htc/sunnyCore/Sprite;)V

    .line 5039
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Sprite;->release()V

    .line 5040
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 5042
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mTexture:Lcom/htc/sunnyCore/Texture;

    if-eqz v0, :cond_1

    .line 5043
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mTexture:Lcom/htc/sunnyCore/Texture;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/Texture;->release()V

    .line 5044
    iput-object v2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 5046
    :cond_1
    return-void
.end method

.method setResource(Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/Texture;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)V
    .locals 0
    .parameter "s"
    .parameter "t"
    .parameter "h"
    .parameter "w"
    .parameter "d"
    .parameter "str"
    .parameter "p"

    .prologue
    .line 5027
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSprite:Lcom/htc/sunnyCore/Sprite;

    .line 5028
    iput-object p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mTexture:Lcom/htc/sunnyCore/Texture;

    .line 5029
    iput p3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mHeight:I

    .line 5030
    iput p4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mWidth:I

    .line 5031
    iput-object p5, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5032
    iput-object p6, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mSection:Ljava/lang/String;

    .line 5033
    iput-object p7, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$FastScrollerCallBackImp$ResourceHolder;->mPaint:Landroid/graphics/Paint;

    .line 5034
    return-void
.end method
