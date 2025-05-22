Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102E528AB02
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747917014; cv=none; b=kIqMzRb3r8LSMhmBSY6j0JpIp5iQzZgLlOeECauGqrUzUNGyWefR0lb+BWGNAeVOrsohzyrqTWeb+f2UJ6dfc2RMCUB5f4Fg2YIfbHYuWFVa5D9FEAdRPYjjJTPFhl8fUuIzUGRadxdNSOsUrfTaco6EfWJUFcE/+u94wBg3lWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747917014; c=relaxed/simple;
	bh=SVcuTEB0VLOW13Cqhm42nQ4vgjIrRM1rCobRBEcN7AA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=j4zKkL7X4b5aSw+AtHN7ZFfH/SD8QvbFtI9mhlY6E97fA6Uw8bRj+cnxH91elx8dPAYnvSjLw+9m4Y1suVtkkRcwMRuH2ySk8rF5CwI/1hFZv67z3rHe4J9db/s3/8Q/8xbDoJ5tP54JuCHLN639cS8zYXROpPRvKbe21zrP8ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1747917014;
	bh=SVcuTEB0VLOW13Cqhm42nQ4vgjIrRM1rCobRBEcN7AA=;
	h=Subject:From:To:Date:From;
	b=Maj//+3RB6MaydN9x6UMtlik9xmMYwPH3G2Gv8T28wjZvJDLqxIVhJ5UlLQfV0C7P
	 DpE/1sPd2WSL50SNdk5V9q2y9xzB1OgBrzO46ykDzJNl+4Bvw/jWJS5nkv07wuzvMY
	 IASHqIhmsJ0xjeeZEvaXl0PVxqrAq9/GS55r3u28=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D04EC4CEEF
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:30:13 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 377483805D89
	for <linux-kernel-announce@vger.kernel.org>; Thu, 22 May 2025 12:30:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.140 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 22 May 2025 12:30:48 +0000
Message-Id: <20250522123048.release-6.1.140@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.140
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.140.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.140.xz

Linux kernel version 6.1.140 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.140.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.140.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.140.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.140/v6.1.139

