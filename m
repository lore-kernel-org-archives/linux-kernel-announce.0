Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75DDD2116ED
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737650438; cv=none; b=Y3khXG4jgkmBsRWeWANMJBN5vZ1J/cpldhCvRnfJ+9LhaNJ14f9aiqoTC2wn6102I+Cn6hXNA4bQOVAfzVYOILR9VGCKM+ZY3sGzsUoeT4BW0zZ/W57UF+HbIt5gYFS2fop7yu+z4RDJgFwa5l7vPRggkWm7qGftMfHDkqvE/W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737650438; c=relaxed/simple;
	bh=m8TtPrlPdiKJ6cX0uqVUZoAB1dEZdKeIpGvYgFATR7E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=M5F8+atas53BWixkTEfVaG/9bEan/WPPIhXdnBYM5GCdKVzg4WLhnuvS8Imv33r3gIBE+uK9c256i6iqmrcKY5oNSbWpZ9BAZdUUxwhQukhKJsT3oqgEMCMHTYln7w8s2OxvGt5M4dAt0GO2nxvsWUWG7ko5B/jF13mIFyj5etQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737650438;
	bh=m8TtPrlPdiKJ6cX0uqVUZoAB1dEZdKeIpGvYgFATR7E=;
	h=Subject:From:To:Date:From;
	b=opquif/2hnp6WnZVx9F37keZbkJjOaaQYkRrQXTjwrlSCC7pTgPtVxrx+n5U2t3cu
	 QMhYc/S8AINh0omPs5S0rZRt2YOwFQ44cjfD0ysgbGsoXALJtLGznJpkp9P8I6+l8V
	 4JpYdBl5T/u6XewwFQ5bOvnsibl1+PUSKRpw5NaQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1905C4CED3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:40:37 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B4700380AA79
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Jan 2025 16:41:03 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.127 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 23 Jan 2025 16:41:02 +0000
Message-Id: <20250123164102.release-6.1.127@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.127
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.127.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.127.xz

Linux kernel version 6.1.127 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.127.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.127.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.127.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.127/v6.1.126

