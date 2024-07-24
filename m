Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043C2EEAB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 24 Jul 2024 14:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721830250; cv=none; b=kDVkLQY30FsieoLVUwEmU0NXEv9YI8yusu79rf2LZ6WNdHdnLmhPIFyPTKGc//0r+/T/YhMYSYbSt4t8QxlDcxujq+KDlhCGaTwBrVAp2ZWZGrRDbIqUXcR0WUNP8Z+FsE7mszTS9EhaNOhTMK6VM1iBbLaaL2xLge2l2BIy82w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721830250; c=relaxed/simple;
	bh=TwrYkMSj/ueeVaK3/13BBWqh4xzsobwEAO1CFPV3X1I=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uQ7F14QJ+0OCx1EWU3hSi+f6wSYvXWqdKC5MH7CIY0/kOPMxWCZFru5J35fKlWbdi+7gkXgIm5mfw/Sgf5SJgYVD/9SmIdL0ke+nXS292zmsLCYX2uZp2cK6cbuM0JkyqWwiepkt1qPOjNYtRQAaiewucg0obXbUW+P/EAtUiIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721830250;
	bh=TwrYkMSj/ueeVaK3/13BBWqh4xzsobwEAO1CFPV3X1I=;
	h=Subject:From:To:Date:From;
	b=bNSJ0amHvrrE/qagACXH9/7C0XDUlGKTR+iuwQms2Qz5oCYmQhzlGTCeu0bKwQdMc
	 bLwBPqNWTz50iZOG095MmbzneOA517PHdr7nLb8mEuxxfwjd4tsP8Pr/CNRyyFS7u+
	 5AJt37E7PO1f0MwvFvOQ89uHrnvr6dVI0L1Vq0KU=
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC387C32781
	for <linux-kernel-announce@vger.kernel.org>; Wed, 24 Jul 2024 14:10:49 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 94353C43613
	for <linux-kernel-announce@vger.kernel.org>; Wed, 24 Jul 2024 14:10:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 24 Jul 2024 14:10:49 +0000
Message-Id: <20240724141049.release-6.10.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.1.xz

Linux kernel version 6.10.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.1/v6.10

