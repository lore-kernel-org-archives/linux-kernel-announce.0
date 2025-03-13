Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D44826738F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:00:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741867221; cv=none; b=R8zQDEBJ7yJDCM6J8+EfxjmJ9SgSQ/6hivvLt89F9AxKmszUfBB4fmyMGlv/mGvgIFhI5k0L2HxGS6rwmHmMwcCWHgVC6AgEoYIyi7xdsh8ZxnjwUXaM/ZIJt3VgqBoANbkhnfQIn3tO9N+mdoPbi1QWRuLg44XQpu0bw5HjI9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741867221; c=relaxed/simple;
	bh=WI8cI+yWQmslaSDchhfx6QzJ/khWfydcbxg6kgMixiQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=elfKWZwd/hCKvXGrbWg8tm2oYkDpbxrEjuJPH/kxAvGJ9x9vMV1hxvyn2BC8FqNi58zv8w2JPs5S7uDNt5VdXE/PfU64pUEoB5caK8vVOMflxSt/b7spd8/rQxnwGtEiC24yNXt1Iy+xRc8iajZlGw8co0TPlQ/jKXvg+F7nCHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741867221;
	bh=WI8cI+yWQmslaSDchhfx6QzJ/khWfydcbxg6kgMixiQ=;
	h=Subject:From:To:Date:From;
	b=UKgJl+rWDto2wOVmSD1sk9pvIWfvUg9rMNRUyYwCtl8smJUQLH4IKMlr2BG0QuVPS
	 RM0K0pPS0qqI3orwZZIskoM/HpFZnWPAD/GVjEdz60Eqgb0N3GJeniGHJG7xmGThZM
	 IM+mqVmSUPAo4T+T8MM33yWQIFxLuNdX1Cm6QclY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BDA0C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:00:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B2C793806651
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:00:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.235 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 13 Mar 2025 12:00:54 +0000
Message-Id: <20250313120054.release-5.10.235@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.235
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.235.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.235.xz

Linux kernel version 5.10.235 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.235.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.235.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.235.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.235/v5.10.234

