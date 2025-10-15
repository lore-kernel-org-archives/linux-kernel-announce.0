Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A7531960B
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760524552; cv=none; b=emaxHyBWxgeOO7YY8o3Xt6ab5FiC67YnoPkMXVsbDeFGpXJSMd1u3zKZkS11wDpu3TbWLGS8duDAmUDuBI3nq+M0Wm4I6uCyohtf3S2i42qiCuQ69+j+mAmV7nVDMCdyFxCrZsruOf7T+wwxszVM9y7Ow7I3rP7CMhBjAGv4Nhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760524552; c=relaxed/simple;
	bh=wPhkvc6ORq9KMHO3IEjg1UKnUZD91bsaJh3/19KT4hg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=P6wh8Llfv2DUVqO7yu60F7zh1+5RshGWbhNz4d5SVkXxEmd2NeF39Sp5dM9uAcucjV1FVuZelZcNjTIGWrmoGPtePUUkWIwZOGR1OwWtVRJVZSawB6xnCjFfP9N1ei3w4LjKysHjQFls7IbjCRAR6BEhOo2lPF8IqJlackWE3So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760524552;
	bh=wPhkvc6ORq9KMHO3IEjg1UKnUZD91bsaJh3/19KT4hg=;
	h=Subject:From:To:Date:From;
	b=pqRMZTxwP9nJDKmftrnHYKNvgKfElJz4q3RN86bPiebnAouphDUjnxfcO6rxOsaZT
	 AUHRzHJolkMprOiM1Df+RjQVzQRJo+nvVsAmrzkKO/VKkxm49FO45uQLSMWxQ3//Sn
	 gkWfBOiVegNWsEDBOV5ydL8tM3lHhmN+YgCE14y0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65956C4CEFE
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:35:52 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 749CE380CFDE
	for <linux-kernel-announce@vger.kernel.org>; Wed, 15 Oct 2025 10:35:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 15 Oct 2025 10:35:37 +0000
Message-Id: <20251015103537.release-6.17.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.3.xz

Linux kernel version 6.17.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.17.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.17.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.17.3/v6.17.2

