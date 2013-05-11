.class public Lcom/htc/text/style/HtcHighlightSpan;
.super Landroid/text/style/CharacterStyle;
.source "HtcHighlightSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mBackgroundColor:I

.field private final mForegroundColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "bg_color"
    .parameter "fg_color"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 25
    iput p1, p0, Lcom/htc/text/style/HtcHighlightSpan;->mBackgroundColor:I

    .line 26
    iput p2, p0, Lcom/htc/text/style/HtcHighlightSpan;->mForegroundColor:I

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "tp"

    .prologue
    .line 35
    iget v0, p0, Lcom/htc/text/style/HtcHighlightSpan;->mBackgroundColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 36
    iget v0, p0, Lcom/htc/text/style/HtcHighlightSpan;->mForegroundColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 37
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 53
    iget v0, p0, Lcom/htc/text/style/HtcHighlightSpan;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
