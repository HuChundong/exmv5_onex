.class public Lcom/htc/opensense/widget/SocialnetworkTextView;
.super Landroid/widget/TextView;
.source "SocialnetworkTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/SocialnetworkTextView$1;,
        Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDrawableCallback:Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;-><init>(Lcom/htc/opensense/widget/SocialnetworkTextView;Lcom/htc/opensense/widget/SocialnetworkTextView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/SocialnetworkTextView;->mDrawableCallback:Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    new-instance v0, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;-><init>(Lcom/htc/opensense/widget/SocialnetworkTextView;Lcom/htc/opensense/widget/SocialnetworkTextView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/SocialnetworkTextView;->mDrawableCallback:Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    new-instance v0, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;-><init>(Lcom/htc/opensense/widget/SocialnetworkTextView;Lcom/htc/opensense/widget/SocialnetworkTextView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/SocialnetworkTextView;->mDrawableCallback:Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    .line 32
    return-void
.end method

.method private static getImageSpans(Ljava/lang/CharSequence;)[Landroid/text/style/ImageSpan;
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 71
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 72
    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ImageSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/text/style/ImageSpan;

    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCompoundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "left"

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/htc/opensense/widget/SocialnetworkTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 116
    return-void
.end method

.method public setCompoundDrawableBottom(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/htc/opensense/widget/SocialnetworkTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method

.method public setCompoundDrawableBottomWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/htc/opensense/widget/SocialnetworkTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 108
    return-void
.end method

.method public setCompoundDrawableLeftWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "left"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/htc/opensense/widget/SocialnetworkTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public setCompoundDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "right"

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, v0, v0, p1, v0}, Lcom/htc/opensense/widget/SocialnetworkTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method public setCompoundDrawableRightWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "right"

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, v0, v0, p1, v0}, Lcom/htc/opensense/widget/SocialnetworkTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-void
.end method

.method public setCompoundDrawableTop(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "top"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/htc/opensense/widget/SocialnetworkTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    return-void
.end method

.method public setCompoundDrawableTopWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "top"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/htc/opensense/widget/SocialnetworkTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 92
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 149
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 152
    .local v3, drawables:Z
    :goto_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/SocialnetworkTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 153
    .local v2, dr:[Landroid/graphics/drawable/Drawable;
    move-object v0, v2

    .local v0, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 154
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    instance-of v6, v1, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v6, :cond_1

    .line 155
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 149
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #dr:[Landroid/graphics/drawable/Drawable;
    .end local v3           #drawables:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 159
    .restart local v0       #arr$:[Landroid/graphics/drawable/Drawable;
    .restart local v2       #dr:[Landroid/graphics/drawable/Drawable;
    .restart local v3       #drawables:Z
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_3
    if-eqz v3, :cond_7

    .line 160
    if-eqz p1, :cond_4

    instance-of v6, p1, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v6, :cond_4

    .line 161
    iget-object v6, p0, Lcom/htc/opensense/widget/SocialnetworkTextView;->mDrawableCallback:Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 164
    :cond_4
    if-eqz p2, :cond_5

    instance-of v6, p2, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v6, :cond_5

    .line 165
    iget-object v6, p0, Lcom/htc/opensense/widget/SocialnetworkTextView;->mDrawableCallback:Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    invoke-virtual {p2, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 168
    :cond_5
    if-eqz p3, :cond_6

    instance-of v6, p3, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v6, :cond_6

    .line 169
    iget-object v6, p0, Lcom/htc/opensense/widget/SocialnetworkTextView;->mDrawableCallback:Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    invoke-virtual {p3, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 172
    :cond_6
    if-eqz p4, :cond_7

    instance-of v6, p4, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v6, :cond_7

    .line 173
    iget-object v6, p0, Lcom/htc/opensense/widget/SocialnetworkTextView;->mDrawableCallback:Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    invoke-virtual {p4, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 177
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 10
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/htc/opensense/widget/SocialnetworkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 37
    .local v6, oldText:Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/htc/opensense/widget/SocialnetworkTextView;->getImageSpans(Ljava/lang/CharSequence;)[Landroid/text/style/ImageSpan;

    move-result-object v4

    .line 38
    .local v4, images:[Landroid/text/style/ImageSpan;
    move-object v0, v4

    .local v0, arr$:[Landroid/text/style/ImageSpan;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 39
    .local v3, image:Landroid/text/style/ImageSpan;
    invoke-virtual {v3}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 40
    .local v1, d:Landroid/graphics/drawable/Drawable;
    instance-of v7, v1, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v7, :cond_0

    .line 41
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #image:Landroid/text/style/ImageSpan;
    :cond_1
    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    if-ne p2, v7, :cond_3

    .line 46
    invoke-static {p1}, Lcom/htc/opensense/widget/SocialnetworkTextView;->getImageSpans(Ljava/lang/CharSequence;)[Landroid/text/style/ImageSpan;

    move-result-object v4

    .line 47
    move-object v0, v4

    array-length v5, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v3, v0, v2

    .line 48
    .restart local v3       #image:Landroid/text/style/ImageSpan;
    invoke-virtual {v3}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    instance-of v7, v1, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v7, :cond_2

    .line 50
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v1, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 52
    iget-object v7, p0, Lcom/htc/opensense/widget/SocialnetworkTextView;->mDrawableCallback:Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 47
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #image:Landroid/text/style/ImageSpan;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 58
    return-void
.end method
