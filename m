Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42F6288C2F
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761744366; cv=none; b=d6SsPbH9Ag80kolOlCq1Z9V7+t3dO5bSDcC7x52LAHGL8ktGJQ2eTRAqSBMVmEb44qLPog0FtbeFTp7favEIMEWwPoLui9tY2mSmdP13/OXZVfVTxb5bgVhXDpD6wco2oJc2uKr09VJQgVX/w4IwZjEv4D+YhL3NqcCbWofKsCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761744366; c=relaxed/simple;
	bh=LTSMVqNJsADu/p439kKLpRHk+aKcj6u9DUhxWnyicEU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=CdXKdhjQZ+yMNUTIDXAE6coHLM9OiSakUp/dCEmNPwKQvS03Msott4KggCy7XlAmRfLIJ3X0lmjScA+e9wwOwKW5L/1DVAvK7UOlYWot5NnvPmj/BOwIHSi5n006FOuEC0VqjG3fU4yX+JVNe8K60vUpf60OAGfdDdeCS8uXIpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1761744366;
	bh=LTSMVqNJsADu/p439kKLpRHk+aKcj6u9DUhxWnyicEU=;
	h=Subject:From:To:Date:From;
	b=LGIF7nTvDZ6JWnmt8jWvtYBweo2sGtlzvZ/AbiXKdtOQkgXoBNJTAIv/hG6C1qHks
	 9IaBh2maaTHoPj3YokJ1WJUHb573Iul02qQingCLCPuHpyOecD9TmgAQ9X1jOQ7sIH
	 1SQXEcAEt7lIzytV7t9PYU2otZ52cRCKwkjtuwLQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 584B0C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:26:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 747B63A4100B
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:25:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.196 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 29 Oct 2025 13:25:40 +0000
Message-Id: <20251029132540.release-5.15.196@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.196
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.196.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.196.xz

Linux kernel version 5.15.196 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.196.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.196.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.196.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.196/v5.15.195

