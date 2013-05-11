.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object; = null

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .parameter "targetView"
    .parameter "fullEditor"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 72
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .parameter "mgr"
    .parameter "fullEditor"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 65
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ensureDefaultComposingSpans()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 575
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 577
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 578
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 584
    .local v0, context:Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010230

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 589
    .local v2, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 590
    .local v1, style:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 591
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 592
    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 597
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #style:Ljava/lang/CharSequence;
    .end local v2           #ta:Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 579
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 580
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_0

    .line 582
    .end local v0           #context:Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 123
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 119
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 76
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 77
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, sps:[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 79
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 80
    aget-object v1, v2, v0

    .line 81
    .local v1, o:Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 82
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 79
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 86
    .end local v0           #i:I
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 10
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const/4 v6, -0x1

    .line 601
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 602
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    .line 687
    :goto_0
    return-void

    .line 606
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 609
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 610
    .local v0, a:I
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 614
    .local v1, b:I
    if-ge v1, v0, :cond_1

    .line 615
    move v5, v0

    .line 616
    .local v5, tmp:I
    move v0, v1

    .line 617
    move v1, v5

    .line 620
    .end local v5           #tmp:I
    :cond_1
    if-eq v0, v6, :cond_3

    if-eq v1, v6, :cond_3

    .line 621
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 634
    :cond_2
    :goto_1
    if-eqz p3, :cond_8

    .line 635
    const/4 v4, 0x0

    .line 636
    .local v4, sp:Landroid/text/Spannable;
    instance-of v6, p1, Landroid/text/Spannable;

    if-nez v6, :cond_6

    .line 637
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4           #sp:Landroid/text/Spannable;
    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 638
    .restart local v4       #sp:Landroid/text/Spannable;
    move-object p1, v4

    .line 639
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 640
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_7

    .line 641
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_7

    .line 642
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v8

    const/16 v9, 0x121

    invoke-interface {v4, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 641
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 623
    .end local v3           #i:I
    .end local v4           #sp:Landroid/text/Spannable;
    :cond_3
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 624
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 625
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 626
    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    .line 627
    :cond_5
    if-ge v1, v0, :cond_2

    .line 628
    move v5, v0

    .line 629
    .restart local v5       #tmp:I
    move v0, v1

    .line 630
    move v1, v5

    goto :goto_1

    .end local v5           #tmp:I
    .restart local v4       #sp:Landroid/text/Spannable;
    :cond_6
    move-object v4, p1

    .line 647
    check-cast v4, Landroid/text/Spannable;

    .line 649
    :cond_7
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 668
    .end local v4           #sp:Landroid/text/Spannable;
    :cond_8
    if-lez p2, :cond_b

    .line 669
    add-int/lit8 v6, v1, -0x1

    add-int/2addr p2, v6

    .line 673
    :goto_3
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 674
    :cond_9
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v6

    if-le p2, v6, :cond_a

    .line 675
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result p2

    .line 676
    :cond_a
    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 678
    invoke-interface {v2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 686
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 671
    :cond_b
    add-int/2addr p2, v0

    goto :goto_3
.end method

.method private sendCurrentText()V
    .locals 11

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 536
    iget-boolean v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v1, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 541
    .local v8, content:Landroid/text/Editable;
    if-eqz v8, :cond_0

    .line 542
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v6

    .line 543
    .local v6, N:I
    if-eqz v6, :cond_0

    .line 546
    if-ne v6, v2, :cond_4

    .line 549
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_2

    .line 550
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 552
    :cond_2
    new-array v7, v2, [C

    .line 553
    .local v7, chars:[C
    invoke-interface {v8, v5, v2, v7, v5}, Landroid/text/Editable;->getChars(II[CI)V

    .line 554
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 555
    .local v9, events:[Landroid/view/KeyEvent;
    if-eqz v9, :cond_4

    .line 556
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v9

    if-ge v10, v1, :cond_3

    .line 558
    aget-object v1, v9, v10

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 556
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 560
    :cond_3
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 567
    .end local v7           #chars:[C
    .end local v9           #events:[Landroid/view/KeyEvent;
    .end local v10           #i:I
    :cond_4
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 569
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 570
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 90
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 94
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 95
    .local v3, sps:[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 96
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 97
    aget-object v2, v3, v1

    .line 98
    .local v2, o:Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 99
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 104
    .local v0, fl:I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_0

    .line 106
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 114
    .end local v0           #fl:I
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "states"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 170
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    .line 171
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 172
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .parameter "correctionInfo"

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 197
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 13
    .parameter "beforeLength"
    .parameter "afterLength"

    .prologue
    const/4 v10, -0x1

    .line 210
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 211
    .local v4, content:Landroid/text/Editable;
    if-nez v4, :cond_0

    const/4 v10, 0x0

    .line 263
    :goto_0
    return v10

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 215
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 216
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 218
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 219
    move v9, v0

    .line 220
    .local v9, tmp:I
    move v0, v1

    .line 221
    move v1, v9

    .line 225
    .end local v9           #tmp:I
    :cond_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 226
    .local v2, ca:I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 227
    .local v3, cb:I
    if-ge v3, v2, :cond_2

    .line 228
    move v9, v2

    .line 229
    .restart local v9       #tmp:I
    move v2, v3

    .line 230
    move v3, v9

    .line 232
    .end local v9           #tmp:I
    :cond_2
    if-eq v2, v10, :cond_4

    if-eq v3, v10, :cond_4

    .line 233
    if-ge v2, v0, :cond_3

    move v0, v2

    .line 234
    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    .line 237
    :cond_4
    const/4 v5, 0x0

    .line 241
    .local v5, deleted:I
    if-lez p1, :cond_6

    .line 242
    sub-int v8, v0, p1

    .line 243
    .local v8, start:I
    if-gez v8, :cond_5

    const/4 v8, 0x0

    .line 244
    :cond_5
    :try_start_0
    invoke-interface {v4, v8, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 245
    sub-int v5, v0, v8

    .line 248
    .end local v8           #start:I
    :cond_6
    if-lez p2, :cond_8

    .line 249
    sub-int/2addr v1, v5

    .line 251
    add-int v7, v1, p2

    .line 252
    .local v7, end:I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v10

    if-le v7, v10, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v7

    .line 254
    :cond_7
    invoke-interface {v4, v1, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v7           #end:I
    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 263
    const/4 v10, 0x1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v6

    .line 258
    .local v6, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "BaseInputConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteSurroundingText (a,b,beforeLength,afterLength)=("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 274
    .local v0, content:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 276
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 277
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 278
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 280
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .parameter "reqModes"

    .prologue
    const/4 v4, 0x0

    .line 289
    iget-boolean v5, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v5, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v4

    .line 291
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 292
    .local v2, content:Landroid/text/Editable;
    if-eqz v2, :cond_0

    .line 294
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 295
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 297
    .local v1, b:I
    if-le v0, v1, :cond_2

    .line 298
    move v3, v0

    .line 299
    .local v3, tmp:I
    move v0, v1

    .line 300
    move v1, v3

    .line 303
    .end local v3           #tmp:I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 135
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 349
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 350
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-object v4

    .line 352
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 353
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 355
    .local v1, b:I
    if-le v0, v1, :cond_2

    .line 356
    move v3, v0

    .line 357
    .local v3, tmp:I
    move v0, v1

    .line 358
    move v1, v3

    .line 361
    .end local v3           #tmp:I
    :cond_2
    if-eq v0, v1, :cond_0

    .line 363
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    .line 364
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 366
    :cond_3
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 2

    .prologue
    .line 716
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 717
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 721
    :goto_0
    return v1

    .line 719
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 721
    .local v1, pos:I
    goto :goto_0
.end method

.method public getSelectionStart()I
    .locals 2

    .prologue
    .line 705
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 706
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 710
    :goto_0
    return v1

    .line 708
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 710
    .local v1, pos:I
    goto :goto_0
.end method

.method public getSubText(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 746
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 748
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 736
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 737
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 739
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 375
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 399
    :goto_0
    return-object v4

    .line 377
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 378
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 380
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 381
    move v3, v0

    .line 382
    .local v3, tmp:I
    move v0, v1

    .line 383
    move v1, v3

    .line 387
    .end local v3           #tmp:I
    :cond_1
    if-gez v1, :cond_2

    .line 388
    const/4 v1, 0x0

    .line 391
    :cond_2
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 392
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 396
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 397
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 399
    :cond_4
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextAfterCursor(III)Ljava/lang/CharSequence;
    .locals 1
    .parameter "length"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 697
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 319
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 341
    :goto_0
    return-object v4

    .line 321
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 322
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 324
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 325
    move v3, v0

    .line 326
    .local v3, tmp:I
    move v0, v1

    .line 327
    move v1, v3

    .line 330
    .end local v3           #tmp:I
    :cond_1
    if-gtz v0, :cond_2

    .line 331
    const-string v4, ""

    goto :goto_0

    .line 334
    :cond_2
    if-le p1, v0, :cond_3

    .line 335
    move p1, v0

    .line 338
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 339
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 341
    :cond_4
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextBeforeCursor(III)Ljava/lang/CharSequence;
    .locals 1
    .parameter "length"
    .parameter "flags"
    .parameter "waitTime"

    .prologue
    .line 692
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 15
    .parameter "actionCode"

    .prologue
    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 407
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 412
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public replaceText(IILjava/lang/CharSequence;)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 728
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    .line 731
    :goto_0
    return-void

    .line 730
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method protected reportFinish()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 531
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 513
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 514
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 515
    .local v0, viewRootImpl:Landroid/view/ViewRootImpl;
    :goto_0
    if-nez v0, :cond_0

    .line 516
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 520
    :cond_0
    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 523
    :cond_1
    monitor-exit v2

    .line 524
    const/4 v1, 0x0

    return v1

    .line 514
    .end local v0           #viewRootImpl:Landroid/view/ViewRootImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setComposingRegion(II)Z
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 446
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 447
    .local v2, content:Landroid/text/Editable;
    if-eqz v2, :cond_6

    .line 448
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 449
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 450
    move v0, p1

    .line 451
    .local v0, a:I
    move v1, p2

    .line 452
    .local v1, b:I
    if-le v0, v1, :cond_0

    .line 453
    move v5, v0

    .line 454
    .local v5, tmp:I
    move v0, v1

    .line 455
    move v1, v5

    .line 458
    .end local v5           #tmp:I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 459
    .local v4, length:I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 460
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 461
    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    .line 462
    :cond_3
    if-le v1, v4, :cond_4

    move v1, v4

    .line 464
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 465
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 466
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 467
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 466
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    .end local v3           #i:I
    :cond_5
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 475
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 476
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 478
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v4           #length:I
    :cond_6
    const/4 v6, 0x1

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v0, 0x1

    .line 441
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 442
    return v0
.end method

.method public setSelection(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v2, 0x1

    .line 487
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 488
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 505
    :cond_0
    :goto_0
    return v2

    .line 489
    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 490
    .local v1, len:I
    if-gt p1, v1, :cond_0

    if-gt p2, v1, :cond_0

    .line 497
    if-ne p1, p2, :cond_2

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 501
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
