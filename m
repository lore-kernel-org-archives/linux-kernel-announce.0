Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9FBDDAB
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Sep 2025 22:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757890104; cv=none; b=Vre+WtLN68PWbxPddbkvqXyNkIrco28GTPlcVk7vGpD6YTg1WFqf095SzXAOuqSB8G06cfYhqB6h3xOJ5EfdKN9nPDg/MJBZBmODwsRfndB1G/icIN7kTmn8oUs1p+I2QPH356LSeuExd1GyYpzy5Uf6hDvQXVtiPHnomy+2X6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757890104; c=relaxed/simple;
	bh=bH6griVkzJz5F28rX9xTmi/iWNMKYQe8tieuVu7zKM8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ck4nY/H+oLEFzK51U7qH8PS0szKRT7Wd+NaGjontf9wQWPwgORgl3mMyfSng+k5ziaZHO/RuhMEJbsl8NKdUvRfG+OQ+1n+tgARcM2Mx/6+PORrrzxm+zfLZLvsN0GpVT7SkLhU48uEVSxykHJDZxzV8sL84gf9gUJkO9ztpegc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757890104;
	bh=bH6griVkzJz5F28rX9xTmi/iWNMKYQe8tieuVu7zKM8=;
	h=Subject:From:To:Date:From;
	b=JTngItulXboOeqdmX2nymmdI8KXDelVb1wIq038GUK6vebDsOLDbX5iUgnqjMXPJt
	 wnW6S/usSArVB/1XBcpiXHh4z7NNARqRfczgw0XoZO/XB/MZ7SpczBMXEtjBqq57gU
	 HDJ7/aSW9F5pHAQK57j4Z7gvBRUdQGN8gTW4W8K0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B565C4CEF0
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Sep 2025 22:48:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 388CE39B167D
	for <linux-kernel-announce@vger.kernel.org>; Sun, 14 Sep 2025 22:48:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.17-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 14 Sep 2025 22:48:24 +0000
Message-Id: <20250914224824.release-6.17-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.17-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.17-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.17-rc6/v6.16

Linux kernel version 6.17-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.17-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.17-rc6/v6.16

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.17-rc6/v6.17-rc5

