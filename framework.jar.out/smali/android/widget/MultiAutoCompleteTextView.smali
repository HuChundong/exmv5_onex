.class public Landroid/widget/MultiAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "MultiAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MultiAutoCompleteTextView$CommaTokenizer;,
        Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    }
.end annotation


# static fields
.field private static final TYPE_TEXT_HTC_FLAG_IME_CURSOR_ADAPTER:I = 0x1000000


# instance fields
.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public enoughToFilter()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 141
    .local v2, text:Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 142
    .local v0, end:I
    if-ltz v0, :cond_0

    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v4, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v3

    .line 146
    :cond_1
    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, v2, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 148
    .local v1, start:I
    sub-int v4, v0, v1

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getThreshold()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 149
    const/4 v3, 0x1

    goto :goto_0
.end method

.method finishInit()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 226
    const-class v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 232
    const-class v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v0

    .line 115
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 117
    :cond_0
    iget-object v3, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 119
    .local v2, start:I
    invoke-virtual {p0, p1, v2, v0, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;III)V

    .line 128
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->dismissDropDown()V

    .line 123
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 124
    .local v1, f:Landroid/widget/Filter;
    if-eqz v1, :cond_1

    .line 125
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "keyCode"

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 194
    return-void
.end method

.method public performValidation()V
    .locals 8

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getValidator()Landroid/widget/AutoCompleteTextView$Validator;

    move-result-object v5

    .line 163
    .local v5, v:Landroid/widget/AutoCompleteTextView$Validator;
    if-eqz v5, :cond_0

    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v6, :cond_1

    .line 183
    :cond_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 168
    .local v0, e:Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 169
    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 170
    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v0, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 171
    .local v3, start:I
    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v0, v3}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 173
    .local v1, end:I
    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 174
    .local v4, sub:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    const-string v6, ""

    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 181
    :cond_2
    :goto_1
    move v2, v3

    .line 182
    goto :goto_0

    .line 176
    :cond_3
    invoke-interface {v5, v4}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 177
    iget-object v6, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, v4}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v0, v3, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->clearComposingText()V

    .line 213
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    .line 214
    .local v1, end:I
    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 216
    .local v3, start:I
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 217
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0, v3, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, original:Ljava/lang/String;
    invoke-static {v0, v3, v1, v2}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 220
    iget-object v4, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, p1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v0, v3, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 221
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 90
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 83
    const/high16 v0, 0x100

    or-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 84
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/widget/MultiAutoCompleteTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 101
    return-void
.end method
