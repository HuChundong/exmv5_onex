.class public Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;
.super Ljava/lang/Object;
.source "SPresentationContainerLayout.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public mAlpha:I

.field public mHeight:I

.field public mRotation:Lcom/htc/sunnyCore/view/Vector3F;

.field public mScale:Lcom/htc/sunnyCore/view/Vector3F;

.field public mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

.field public mVisible:Z

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/high16 v1, 0x3f80

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 44
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunnyCore/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    .line 50
    new-instance v0, Lcom/htc/sunnyCore/view/Vector3F;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/sunnyCore/view/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    .line 56
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 62
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 68
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mVisible:Z

    .line 81
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/high16 v1, 0x3f80

    .line 88
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/Vector3F;->reset()V

    .line 89
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0}, Lcom/htc/sunnyCore/view/Vector3F;->reset()V

    .line 90
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1, v1, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(FFF)V

    .line 92
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 93
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 94
    iput v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mVisible:Z

    .line 97
    return-void
.end method

.method public setLayout(Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 105
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 106
    iget-object v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget-object v1, p1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/Vector3F;->setVector3F(Lcom/htc/sunnyCore/view/Vector3F;)V

    .line 107
    iget v0, p1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mAlpha:I

    .line 108
    iget v0, p1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    .line 109
    iget v0, p1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    iput v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    .line 110
    iget-boolean v0, p1, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mVisible:Z

    iput-boolean v0, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mVisible:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Translation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mTranslation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "Rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mRotation:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "Scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " z:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mScale:Lcom/htc/sunnyCore/view/Vector3F;

    iget v2, v2, Lcom/htc/sunnyCore/view/Vector3F;->mZ:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/sunnyCore/widget/presentation/SPresentationContainerLayout;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
