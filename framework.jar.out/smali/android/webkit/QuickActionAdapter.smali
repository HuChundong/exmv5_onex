.class public Landroid/webkit/QuickActionAdapter;
.super Ljava/lang/Object;
.source "QuickActionAdapter.java"

# interfaces
.implements Lcom/htc/textselection/QuickActions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/QuickActionAdapter$1;,
        Landroid/webkit/QuickActionAdapter$MyActionMode;
    }
.end annotation


# instance fields
.field private forceUpdate:Z

.field private mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mInflater:Landroid/view/MenuInflater;

.field private mWebView:Landroid/webkit/WebView;

.field private mode:Landroid/view/ActionMode;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webview"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Landroid/webkit/QuickActionAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    .line 17
    iput-object v1, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    .line 18
    iput-object v1, p0, Landroid/webkit/QuickActionAdapter;->mInflater:Landroid/view/MenuInflater;

    .line 19
    iput-object v1, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/QuickActionAdapter;->forceUpdate:Z

    .line 22
    iput-object v1, p0, Landroid/webkit/QuickActionAdapter;->mWebView:Landroid/webkit/WebView;

    .line 25
    iput-object p1, p0, Landroid/webkit/QuickActionAdapter;->mWebView:Landroid/webkit/WebView;

    .line 26
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/QuickActionAdapter;->mInflater:Landroid/view/MenuInflater;

    .line 27
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    .line 28
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/QuickActionAdapter;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/QuickActionAdapter;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/QuickActionAdapter;)Landroid/view/ActionMode$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/QuickActionAdapter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/QuickActionAdapter;)Landroid/view/MenuInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mInflater:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public getMode()Landroid/view/ActionMode;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/webkit/QuickActionAdapter$MyActionMode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/QuickActionAdapter$MyActionMode;-><init>(Landroid/webkit/QuickActionAdapter;Landroid/webkit/QuickActionAdapter$1;)V

    iput-object v0, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    .line 48
    :cond_0
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 7
    .parameter "actions"

    .prologue
    .line 53
    iget-object v3, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v2

    .line 54
    .local v2, size:I
    const/4 v1, 0x0

    .line 55
    .local v1, item:Landroid/view/MenuItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 56
    iget-object v3, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v0}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {p1, v3, v4, v5, v6}, Lcom/htc/textselection/ActionMenu;->addAction(IILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/htc/textselection/Action;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/webkit/QuickActionAdapter;->forceUpdate:Z

    .line 60
    return-void
.end method

.method public onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V
    .locals 8
    .parameter "actions"

    .prologue
    .line 64
    iget-boolean v5, p0, Landroid/webkit/QuickActionAdapter;->forceUpdate:Z

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Landroid/webkit/QuickActionAdapter;->onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V

    .line 67
    :cond_0
    iget-object v5, p0, Landroid/webkit/QuickActionAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v6, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    iget-object v7, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v5, v6, v7}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v3

    .line 70
    .local v3, ret:Z
    iget-object v5, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v4

    .line 71
    .local v4, size:I
    const/4 v2, 0x0

    .line 72
    .local v2, item:Landroid/view/MenuItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 73
    iget-object v5, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5, v1}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 75
    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-interface {p1, v5, v6}, Lcom/htc/textselection/ActionMenu;->getAction(II)Lcom/htc/textselection/Action;

    move-result-object v0

    .line 76
    .local v0, a:Lcom/htc/textselection/Action;
    if-eqz v0, :cond_1

    .line 77
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    invoke-interface {v0, v5}, Lcom/htc/textselection/Action;->setVisible(Z)V

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0           #a:Lcom/htc/textselection/Action;
    :cond_2
    return-void
.end method

.method public onQuickActionItemClicked(I)V
    .locals 3
    .parameter "actionID"

    .prologue
    .line 85
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    iget-object v2, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p1}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 86
    return-void
.end method

.method public setCallback(Landroid/view/ActionMode$Callback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 31
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    iput-object p1, p0, Landroid/webkit/QuickActionAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    .line 34
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->clearAll()V

    .line 36
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    .line 37
    new-instance v0, Landroid/webkit/QuickActionAdapter$MyActionMode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/QuickActionAdapter$MyActionMode;-><init>(Landroid/webkit/QuickActionAdapter;Landroid/webkit/QuickActionAdapter$1;)V

    iput-object v0, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    .line 40
    :cond_2
    iget-object v0, p0, Landroid/webkit/QuickActionAdapter;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/webkit/QuickActionAdapter;->mode:Landroid/view/ActionMode;

    iget-object v2, p0, Landroid/webkit/QuickActionAdapter;->mBuilder:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/QuickActionAdapter;->forceUpdate:Z

    goto :goto_0
.end method
