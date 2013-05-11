.class Landroid/webkit/FindActionModeCallback;
.super Ljava/lang/Object;
.source "FindActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/FindActionModeCallback$NoAction;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActiveMatchIndex:I

.field private mContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mGlobalVisibleOffset:Landroid/graphics/Point;

.field private mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mInput:Landroid/view/inputmethod/InputMethodManager;

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesFound:Z

.field private mNumberOfMatches:I

.field private mResources:Landroid/content/res/Resources;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    .line 295
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    .line 54
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x10900c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 57
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    .line 59
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    new-instance v1, Landroid/webkit/FindActionModeCallback$NoAction;

    invoke-direct {v1}, Landroid/webkit/FindActionModeCallback$NoAction;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 60
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/webkit/FindActionModeCallback;->setText(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    const v1, 0x1020362

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    .line 64
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    .line 67
    return-void
.end method

.method private findNext(Z)V
    .locals 2
    .parameter "next"

    .prologue
    .line 109
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 113
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    if-nez v0, :cond_2

    .line 114
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    iget v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewClassic;->findNext(Z)V

    .line 123
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    goto :goto_0
.end method

.method private updateMatchesString()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 170
    iget v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const v1, 0x1040493

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :goto_0
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const v2, 0x1130013

    iget v3, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/webkit/FindActionModeCallback;->mActiveMatchIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget v6, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 292
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 279
    return-void
.end method

.method findAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No WebView for FindActionModeCallback::findAll"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 134
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 135
    .local v0, find:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->clearMatches()V

    .line 137
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 139
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->findAll(Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 141
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 142
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iput v3, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    .line 144
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewClassic;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method finish()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 71
    return-void
.end method

.method public getActionModeGlobalBottom()I
    .locals 3

    .prologue
    .line 297
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_0

    .line 298
    const/4 v1, 0x0

    .line 305
    :goto_0
    return v1

    .line 300
    :cond_0
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 301
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 302
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    .line 304
    :cond_1
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 305
    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 253
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    if-nez v2, :cond_0

    .line 254
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindActionModeCallback::onActionItemClicked"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 257
    :cond_0
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 258
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 268
    :goto_0
    return v0

    .line 260
    :pswitch_0
    invoke-direct {p0, v0}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    :goto_1
    move v0, v1

    .line 268
    goto :goto_0

    .line 263
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    goto :goto_1

    .line 258
    :pswitch_data_0
    .packed-switch 0x1020371
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/FindActionModeCallback;->findNext(Z)V

    .line 185
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 13
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v12, 0x1020372

    const v11, 0x1020371

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/view/ActionMode;->isUiFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 236
    :goto_0
    return v4

    .line 199
    :cond_0
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 200
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x1140001

    invoke-virtual {v5, v6, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 203
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkit/WebViewClassic;->isInBrowserApp()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    new-instance v0, Landroid/webkit/InputBackgroundDrawable;

    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5, v4}, Landroid/webkit/InputBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    .line 205
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 207
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    iget-object v6, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const-string/jumbo v8, "primary_text_color"

    const-string v9, "color"

    const-string v10, "com.htc"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 208
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Landroid/webkit/FindActionModeCallback;->mResources:Landroid/content/res/Resources;

    const-string v8, "dark_secondaryfont_color"

    const-string v9, "color"

    const-string v10, "com.htc"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    .line 212
    .local v2, margin:I
    if-eqz v3, :cond_1

    .line 213
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 214
    div-int/lit8 v5, v2, 0x2

    div-int/lit8 v6, v2, 0x2

    invoke-virtual {v3, v5, v4, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 215
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    :cond_1
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 218
    .restart local v3       #params:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_2

    .line 219
    div-int/lit8 v5, v2, 0x2

    invoke-virtual {v3, v4, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 220
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :cond_2
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x104046f

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 224
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x104046d

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 225
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x20800bf

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 226
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x20800b3

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 229
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v2           #margin:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 230
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 231
    .local v1, edit:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 232
    iget-object v5, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iput-boolean v4, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 234
    iget-object v4, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v4, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 236
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/FindActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 242
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->notifyFindDialogDismissed()V

    .line 243
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 244
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/webkit/FindActionModeCallback;->findAll()V

    .line 287
    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 80
    .local v1, span:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 84
    .local v0, length:I
    invoke-static {v1, v0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 87
    const/16 v2, 0x12

    invoke-interface {v1, p0, v3, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 88
    iput-boolean v3, p0, Landroid/webkit/FindActionModeCallback;->mMatchesFound:Z

    .line 89
    return-void
.end method

.method setWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "webView"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "WebView supplied to FindActionModeCallback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 100
    :cond_0
    iput-object p1, p0, Landroid/webkit/FindActionModeCallback;->mWebView:Landroid/webkit/WebViewClassic;

    .line 101
    return-void
.end method

.method public showSoftInput()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 150
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mInput:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/webkit/FindActionModeCallback;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 152
    return-void
.end method

.method public updateMatchCount(IIZ)V
    .locals 2
    .parameter "matchIndex"
    .parameter "matchCount"
    .parameter "isEmptyFind"

    .prologue
    .line 155
    if-nez p3, :cond_0

    .line 156
    iput p2, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    .line 157
    iput p1, p0, Landroid/webkit/FindActionModeCallback;->mActiveMatchIndex:I

    .line 158
    invoke-direct {p0}, Landroid/webkit/FindActionModeCallback;->updateMatchesString()V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/webkit/FindActionModeCallback;->mMatches:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/FindActionModeCallback;->mNumberOfMatches:I

    goto :goto_0
.end method
