Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB3F8304BC6
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 11:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759405852; cv=none; b=BdU99EY3uxZvv1UWnNhQlyE2EwNqQHWuAvbEdFigke/BAUFXsPvonu1cZMWnNyxbdhdsFNPN4s8gev1WVGahbGQ02yXCzw4jwUeqbM5JAFb6atCZwIvvRVZP9l4e8SBLu3QtMJzV025VU8gK3oz6lLDpx4qZdzpjmi8pC5GPiYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759405852; c=relaxed/simple;
	bh=6OxtuCYTFFENpWr2L6Oykk+lKlpVtWIRJ1MWw2zrRTU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RPxQS0wYFllSHQy8rukhito3ohIz5Vpru8oYHAP5BNBGP6S+wZOi+lq4eUOjQAayjG5kHEUGs3nGyBuuBaTXxGHRb6IDEGGXf6/ZkNN9neK0OdkOi3DjJQ4frKlH2lJZ5IMoOvRyrzbl4RKTrEQL4h4dDlqwsrwwLAWwI+3eQaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1759405852;
	bh=6OxtuCYTFFENpWr2L6Oykk+lKlpVtWIRJ1MWw2zrRTU=;
	h=Subject:From:To:Date:From;
	b=e/DEkqB/bK57bwCnm5NmCTfTyBya+vAZYHwuUMTI3kEbpd5th+jzkGu+zrW0U6a15
	 93DK/whOt4Pn6j6cEAzkk/+7dpVswDUn0sMyRGg42HPb6V6eziBnRfDtoyohfJRGjn
	 Pvkl5ok6VeZsrgDpqs6Pu8z7iMKRjfgiX6Bolh7E=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CBA1C4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 11:50:52 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B16E739D0C1A
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Oct 2025 11:50:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.194 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Oct 2025 11:50:44 +0000
Message-Id: <20251002115044.release-5.15.194@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.194
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.194.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.194.xz

Linux kernel version 5.15.194 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.194.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.194.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.194.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.194/v5.15.193

