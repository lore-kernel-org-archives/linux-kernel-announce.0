Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E45E3380FF1
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781871328; cv=none; b=blOK9s5+NgQtCo14zT6MdDtO1mjAlzMiPLrXxlJwzbjB/pVwD/7Mq088/knuLdaFDdMbe16OCBgoe59tfvbJEyTTIJlnL3flt/UMubJytLRXFZpvojt1pJx9HkVFUWpH9U3cKzfFcozalGV3onuRChrJRwAjHjTnTWNJZXsC/O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781871328; c=relaxed/simple;
	bh=k+IFZVD11XU+6RETS875FLhzjrULy7X2QaUbZXhHl6M=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YES52GhYtBgIeiS1jQbSZ3dccLJzwQHY3CquFKunI5x/9e6NTSpupgEL2tMdFnAV0yi2WjAyxh0VaE7LnFXoAcX2LgvWwOvuiugwMSIqnY9N1qF8lie+agK3+UD8XQPCi1ftxGZBTHXcC/TwQUVK4ZtLUp4XueBJYHDlY02/tgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1781871328;
	bh=k+IFZVD11XU+6RETS875FLhzjrULy7X2QaUbZXhHl6M=;
	h=Subject:From:To:Date:From;
	b=LNZbawqicX5JRNqwdVF4f6q5ni224ez4x3l9JJBIrTQbKzbwjlFAJXGhWaRw26Fog
	 EbDt9cHruOKyy1A9r/DhzUmK0rl3F3OTZOZFI6+MAUNbjROHlPuFkB8HP5e6EK8VJP
	 /byXbZyOGorSLscroTvOeUb1MVC4+71nXXuBKV+A=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5992B1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:15:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 966363AA6A58
	for <linux-kernel-announce@vger.kernel.org>; Fri, 19 Jun 2026 12:15:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 19 Jun 2026 12:15:18 +0000
Message-Id: <20260619121518.release-7.1.1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.1
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.1.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.1.xz

Linux kernel version 7.1.1 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.1.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.1.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.1.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.1/v7.1

