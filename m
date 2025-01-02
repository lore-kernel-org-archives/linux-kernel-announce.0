Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1980328E3F
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Jan 2025 09:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735811429; cv=none; b=JkAdQbgGGAubjMwdKg4JibeN4hPPzUWq158stkDxeXQAF8Yk34xYsJEOFYtrqfD+ofUjnK4xnDnvaPHrl/PUpher/VBCnFalQvZrPRGcJ4AgwVrHIGCmKwm0OI3obbsdGKQ514xluOyMw4AnQLS0DhuSma+wHWbofarfNNHLjMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735811429; c=relaxed/simple;
	bh=DDS+dfufPHg6WvKXoS5uPQx2DiFI4guvUGwAyX6OYOc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FKVy37MH/QCPwcr6hVj3G61dKO4kh5IdwGYNZFpkZkJvNgPZ05nxTDLE936zXVGy+hZ4B5YPY/4lpmjEJ4n+v5LF5/GsNVKbghc8QILKdSJZrLa/H3iQ+3VOMEoMismU/H1qjiB5td8UeOkSNi76urIUnubHY2+Bh2HTeer8tG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1735811429;
	bh=DDS+dfufPHg6WvKXoS5uPQx2DiFI4guvUGwAyX6OYOc=;
	h=Subject:From:To:Date:From;
	b=vbTcEc0xW22c0oBvbqob/ZecstGdXjqrskGi4uvi4QXhy8dVaoFzjvxdAg2fJeKab
	 o64sY50oPrHtTzx7hHh6MhM57ILsvOqZM4YHAU79G2REoaAooBDCf+IrSjYYWhziSx
	 wweZhljNd6mpXttQQ/PT/qcrH6SrG6epMNo1VwvQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97229C4CED0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Jan 2025 09:50:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F32DF380A965
	for <linux-kernel-announce@vger.kernel.org>; Thu,  2 Jan 2025 09:50:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.123 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 02 Jan 2025 09:50:48 +0000
Message-Id: <20250102095048.release-6.1.123@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.123
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.123.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.123.xz

Linux kernel version 6.1.123 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.123.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.123.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.123.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.123/v6.1.122

