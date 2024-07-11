Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC49156F5D
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Jul 2024 11:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720695941; cv=none; b=Ec0DF6VZKj2Meid6cY394ssdlrMtOblDyIhGd4AVU2jbEUXfW+FNFmtyjOOFJHF8sNymhg+cS6MUrnBK/braTxRdNUko4uFZhBdQjY+v2EK0lj24Qyp6vpBNHygctLLJhyXavzmN56gwdCPEJxvIbzacjYeolN4+A3rb3fdzONs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720695941; c=relaxed/simple;
	bh=togjGnSWPl93rUOVvfdJVqQLqDIIcx1q4vyFop0gBXc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hSo0hGi+jPCMAKu4dbzpVqVsh3hdrZ64LIWXlkDRCgezCy7g7WFWx3UjAnvB+G1OzqvISbKEwRs+9zr+UpN9RdQHFfnfErzUbsCGnho9WBQMeGjsIQ5mefWztjYy50GoRrhFmr2py9tB32sk0T+DSU2e83Ozuh1c0K29CBiHUDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720695941;
	bh=togjGnSWPl93rUOVvfdJVqQLqDIIcx1q4vyFop0gBXc=;
	h=Subject:From:To:Date:From;
	b=SdSQRUXHk+FSyxKY2cHdZkTfIYbxXOflqhB/Q/yy/j9uyXldqAtIsc2C+ZLIG3XvB
	 Pwfdt4KZtr6NJtB8ZJqijbLZWXwFa0hFRO0qLqeA60z4fs/yEVSv2+rJgr5I7b7DAk
	 ceb5WGkOSCvS3gZq3yXwGzx/kp06TTO4wl4HmOmk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4AE42C4AF07
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Jul 2024 11:05:41 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 366E6C43153
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Jul 2024 11:05:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.98 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 11 Jul 2024 11:05:41 +0000
Message-Id: <20240711110541.release-6.1.98@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.98
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.98.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.98.xz

Linux kernel version 6.1.98 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.98.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.98.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.98.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.98/v6.1.97

