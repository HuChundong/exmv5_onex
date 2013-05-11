.class final Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineVideoInfo"
.end annotation


# instance fields
.field private mHeight:F

.field private mUrl:Ljava/lang/String;

.field private mWidth:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFF)V
    .locals 0
    .parameter "url"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 847
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mUrl:Ljava/lang/String;

    .line 849
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mX:F

    .line 850
    iput p3, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mY:F

    .line 851
    iput p4, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mWidth:F

    .line 852
    iput p5, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mHeight:F

    .line 853
    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mHeight:F

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mWidth:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 860
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->mY:F

    return v0
.end method
