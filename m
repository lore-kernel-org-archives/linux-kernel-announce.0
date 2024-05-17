Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304DB2C85D
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715940340; cv=none; b=hskPSJH+YT3RQej5LzPoNgq2sCRVTw5AtgorL5AN2NYq8/xIJjUiB49f8auZfhwzQK1mhrXnuNofWkR5Z+j9zEOZ71OwNNH2Lqd0PpIs4JpH4x5InnXC83g9WdYdJHwafRmXW7rIeLBVh+ZLntVVye5OXLxgcHnrEJNru/jzbBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715940340; c=relaxed/simple;
	bh=yOty9DcVkeqoD9jaNStNCsZ+++zhB2Bvn7zuEkpMslI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Y7FUy5HV2L+NU1dIE/Lew7tiEsIzAl9K5Noto4FQIr0Vcyq2Mgh01KizbrSTJQ6Cnxmit+vWqVm4H3AHQr3yvYcQr9fPN423S7KTlblXxW5rnKRU6YKDfX4v4dZnBNwklz8z4q3UDInhmm5SiM0scVISN6lhJ6bQaIH8E342NK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1715940340;
	bh=yOty9DcVkeqoD9jaNStNCsZ+++zhB2Bvn7zuEkpMslI=;
	h=Subject:From:To:Date:From;
	b=bREqSpfrvVig6lv3RkyjQdB2mVjJ/VrW7LtIP1ZqjzF4ZBdpW5pF0egYxYpKT0wUt
	 vWmKQRHdYqVakrg8sU+ETTX0XH+b/ctU82UwDhvvJsym5zqPcFGmc5nj0dmef2uQCi
	 FUyJ6qZaByXb05xfNJ/hwZB0hmq+k3+3JhQWjPig=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B70F1C2BD10
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:05:39 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A8D0FC54BD4
	for <linux-kernel-announce@vger.kernel.org>; Fri, 17 May 2024 10:05:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.159 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 17 May 2024 10:05:39 +0000
Message-Id: <20240517100539.release-5.15.159@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.159
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.159.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.159.xz

Linux kernel version 5.15.159 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.159.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.159.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.159.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.159/v5.15.158

