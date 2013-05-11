.class public Landroid/text/method/StringPickerDialog;
.super Landroid/app/Dialog;
.source "StringPickerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/StringPickerDialog$OptionsAdapter;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCharMap:C

.field private mConfChangeListener:Landroid/content/BroadcastReceiver;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInsert:Z

.field mKeyboardHidden:I

.field private mOption:[Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;[Ljava/lang/String;ZC)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "text"
    .parameter "option"
    .parameter "insert"
    .parameter "c"

    .prologue
    .line 47
    const v0, 0x1030059

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/method/StringPickerDialog;->mKeyboardHidden:I

    .line 154
    new-instance v0, Landroid/text/method/StringPickerDialog$1;

    invoke-direct {v0, p0}, Landroid/text/method/StringPickerDialog$1;-><init>(Landroid/text/method/StringPickerDialog;)V

    iput-object v0, p0, Landroid/text/method/StringPickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object p2, p0, Landroid/text/method/StringPickerDialog;->mView:Landroid/view/View;

    .line 50
    iput-object p3, p0, Landroid/text/method/StringPickerDialog;->mText:Landroid/text/Editable;

    .line 51
    iput-object p4, p0, Landroid/text/method/StringPickerDialog;->mOption:[Ljava/lang/String;

    .line 52
    iput-boolean p5, p0, Landroid/text/method/StringPickerDialog;->mInsert:Z

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/StringPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iput-char p6, p0, Landroid/text/method/StringPickerDialog;->mCharMap:C

    .line 55
    return-void
.end method

.method static synthetic access$000(Landroid/text/method/StringPickerDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/text/method/StringPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/method/StringPickerDialog;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/text/method/StringPickerDialog;->mOption:[Ljava/lang/String;

    return-object v0
.end method

.method private replaceCharacterAndClose(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "replace"

    .prologue
    .line 85
    iget-object v1, p0, Landroid/text/method/StringPickerDialog;->mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 86
    .local v0, selEnd:I
    iget-boolean v1, p0, Landroid/text/method/StringPickerDialog;->mInsert:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    iget-object v1, p0, Landroid/text/method/StringPickerDialog;->mText:Landroid/text/Editable;

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 91
    :goto_0
    invoke-virtual {p0}, Landroid/text/method/StringPickerDialog;->dismiss()V

    .line 92
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Landroid/text/method/StringPickerDialog;->mText:Landroid/text/Editable;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 98
    iget-object v1, p0, Landroid/text/method/StringPickerDialog;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/text/method/StringPickerDialog;->dismiss()V

    .line 104
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 101
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    .local v0, result:Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Landroid/text/method/StringPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method onConfigurationChanged()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, newHadrKeyboardHidden:I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    iget v1, p0, Landroid/text/method/StringPickerDialog;->mKeyboardHidden:I

    if-eq v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Landroid/text/method/StringPickerDialog;->dismiss()V

    .line 174
    :cond_0
    return-void

    .line 170
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Landroid/text/method/StringPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 62
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/text/method/StringPickerDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 63
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 64
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 66
    const v2, 0x4030019

    invoke-virtual {p0, v2}, Landroid/text/method/StringPickerDialog;->setContentView(I)V

    .line 68
    const v2, 0x4110029

    invoke-virtual {p0, v2}, Landroid/text/method/StringPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 69
    .local v0, grid:Landroid/widget/GridView;
    new-instance v2, Landroid/text/method/StringPickerDialog$OptionsAdapter;

    invoke-virtual {p0}, Landroid/text/method/StringPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/text/method/StringPickerDialog$OptionsAdapter;-><init>(Landroid/text/method/StringPickerDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-char v2, p0, Landroid/text/method/StringPickerDialog;->mCharMap:C

    const v3, 0xef05

    if-ne v2, v3, :cond_0

    .line 73
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 75
    :cond_0
    const v2, 0x411002a

    invoke-virtual {p0, v2}, Landroid/text/method/StringPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Landroid/text/method/StringPickerDialog;->mCancelButton:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Landroid/text/method/StringPickerDialog;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Landroid/text/method/StringPickerDialog;->mOption:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/text/method/StringPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 138
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/text/method/StringPickerDialog;->mKeyboardHidden:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/text/method/StringPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/text/method/StringPickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void

    .line 139
    .end local v0           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 151
    invoke-virtual {p0}, Landroid/text/method/StringPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/text/method/StringPickerDialog;->mConfChangeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    return-void
.end method
