.class Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvokeMonthDateTimePicker"
.end annotation


# instance fields
.field mDay:I

.field mHour:I

.field mMethod_Show:Ljava/lang/reflect/Method;

.field mMethod_setPositiveButton:Ljava/lang/reflect/Method;

.field mMinute:I

.field mMonth:I

.field mPicker:Ljava/lang/Object;

.field mPickerType:I

.field mSecond:I

.field mYear:I

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;IIIIIII)V
    .locals 4
    .parameter
    .parameter "pickerType"
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "min"
    .parameter "sec"

    .prologue
    const/4 v3, -0x1

    .line 11351
    iput-object p1, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11352
    const-string/jumbo v1, "mc"

    const-string v2, "InvokeMonthDateTimePicker constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11354
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 11356
    .local v0, cal:Ljava/util/Calendar;
    iput p2, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mPickerType:I

    .line 11357
    if-ne p3, v3, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .end local p3
    :cond_0
    iput p3, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mYear:I

    .line 11359
    const/4 v1, -0x2

    if-ne p4, v1, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p4

    .end local p4
    :cond_1
    iput p4, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mMonth:I

    .line 11360
    if-ne p5, v3, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p5

    .end local p5
    :cond_2
    iput p5, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mDay:I

    .line 11361
    if-ne p6, v3, :cond_3

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p6

    .end local p6
    :cond_3
    iput p6, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mHour:I

    .line 11362
    if-ne p7, v3, :cond_4

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p7

    .end local p7
    :cond_4
    iput p7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mMinute:I

    .line 11363
    if-ne p8, v3, :cond_5

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p8

    .end local p8
    :cond_5
    iput p8, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mSecond:I

    .line 11364
    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;IIIIIIILandroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 11338
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;-><init>(Landroid/webkit/WebViewClassic;IIIIIII)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 11377
    :try_start_0
    const-string v5, "WebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InvokeMonthDateTimePicker mPickerType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mPickerType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11379
    iget v5, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mPickerType:I

    if-ne v5, v10, :cond_0

    .line 11381
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.browser"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 11384
    .local v4, pkgContext:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 11385
    .local v3, loader:Ljava/lang/ClassLoader;
    const-string v5, "com.htc.browsermodule.WebviewDatePickerDialog"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 11389
    .local v2, exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/webkit/WebViewCore;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 11392
    .local v0, con_from_browser:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$1800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mYear:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mMonth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 11398
    .end local v0           #con_from_browser:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v2           #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #pkgContext:Landroid/content/Context;
    :cond_0
    iget v5, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mPickerType:I

    if-ne v5, v11, :cond_1

    .line 11400
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.browser"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 11403
    .restart local v4       #pkgContext:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 11404
    .restart local v3       #loader:Ljava/lang/ClassLoader;
    const-string v5, "com.htc.browsermodule.WebviewDatePickerDialog"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 11407
    .restart local v2       #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v5, "mc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "webviewcore.java type 2 mDay = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11409
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/webkit/WebViewCore;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 11412
    .restart local v0       #con_from_browser:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$1800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mYear:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mMonth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 11416
    .end local v0           #con_from_browser:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v2           #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #pkgContext:Landroid/content/Context;
    :cond_1
    iget v5, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mPickerType:I

    if-ne v5, v8, :cond_2

    .line 11418
    iget-object v5, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.browser"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 11421
    .restart local v4       #pkgContext:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 11422
    .restart local v3       #loader:Ljava/lang/ClassLoader;
    const-string v5, "com.htc.browsermodule.WebviewTimePickerDialog"

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 11426
    .restart local v2       #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/webkit/WebViewCore;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 11430
    .restart local v0       #con_from_browser:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$1800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mHour:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Landroid/webkit/WebViewClassic$InvokeMonthDateTimePicker;->mMinute:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11442
    .end local v0           #con_from_browser:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v2           #exteriorClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #loader:Ljava/lang/ClassLoader;
    .end local v4           #pkgContext:Landroid/content/Context;
    :cond_2
    :goto_0
    return-void

    .line 11436
    :catch_0
    move-exception v1

    .line 11437
    .local v1, e:Ljava/lang/Exception;
    const-string/jumbo v5, "mc"

    const-string v6, "Browser %s %s could not be loaded."

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "com.android.browser"

    aput-object v8, v7, v9

    const-string v8, "com.android.browser.HtcSeekBarForFramework"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
