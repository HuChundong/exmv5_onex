.class public Landroid/widget/InputMethodStateUtil;
.super Ljava/lang/Object;
.source "InputMethodStateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static focusIn(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "context"

    .prologue
    .line 41
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 45
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static getCursorRectInWindow(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "tv"

    .prologue
    .line 19
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->getCursorRectInWindow()Landroid/graphics/Rect;

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFrameworkView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "contentView"

    .prologue
    const/4 v1, 0x0

    .line 53
    if-nez p0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v1

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    .local v0, inflater:Landroid/view/LayoutInflater;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 60
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 61
    const v2, 0x4030002

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 64
    :pswitch_1
    if-eqz p2, :cond_0

    .line 65
    const/high16 v1, 0x411

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 68
    :pswitch_2
    if-eqz p2, :cond_0

    .line 69
    const v1, 0x4110001

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 72
    :pswitch_3
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 73
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 74
    const v2, 0x4030003

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static initInputMethodState(Landroid/widget/TextView;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 14
    if-eqz p0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/widget/TextView;->createInputMethodStateIfNeeded()V

    .line 16
    :cond_0
    return-void
.end method

.method public static showSoftInputUnchecked(ILandroid/os/ResultReceiver;Landroid/content/Context;)V
    .locals 2
    .parameter "flags"
    .parameter "resultReceiver"
    .parameter "context"

    .prologue
    .line 29
    if-nez p2, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 33
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method
