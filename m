Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357333385A7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787898685; cv=none; b=eYKj4egYyIe2yvZWQFJzaWxjPjykpslvB7YIto4UeBK7pK5v1Q1za8FzYuUGU6CRfPm/OqECXtjvgCFMGm169gx7CGP97HYNqRoERcqDoYcjfcbV9+wv68FaQUy0DVz6kYGpFtfYG0GRIOiPenm79kL9OYLmcpKx3C7wjzZhOx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787898685; c=relaxed/simple;
	bh=oUZVcoJelkytOdsSt+At0Xv6ZgeSY1Ljmf6amh3okp0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=amDG1FDA30XxEdDbnXGQ0/zP7Z54ek9wTQUKryqYionKQx8tl/EgnYVZuQHoM/Q/zHsf/SCLEGz8HwTfLg+/BwTXx1TD/5i+40/Mjrdq5n/F5beQ26OvK/PdCHV4ANK/pI0SuuZS6pksx9UwFwQ/Y40o+Kuo5em//3y547q2ohQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787898685;
	bh=oUZVcoJelkytOdsSt+At0Xv6ZgeSY1Ljmf6amh3okp0=;
	h=Subject:From:To:Date:From;
	b=MLHZOQGG7Fjqf9uAfderm1dt600e9ORHWWXbwjA4P9DMI8JzVjh1viMUMUXUkZDSA
	 M9I6yotkHs8ueIR1WjMTPk23e39/uzWMI3I6s4QmUzuVVe5fnDExp41Ap0SKh5zyFN
	 CtOUnDquYUJdYTRxoD9HzASCGWT94i+/hqIR9sIU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C806B1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:31:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C3813809A90
	for <linux-kernel-announce@vger.kernel.org>; Fri, 28 Aug 2026 06:30:30 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.268 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 28 Aug 2026 06:30:28 +0000
Message-Id: <20260828063028.release-5.10.268@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.268
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.268.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.268.xz

Linux kernel version 5.10.268 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.268.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.268.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.268.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.268/v5.10.267

