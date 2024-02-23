Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183E41119B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 08:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708676744; cv=none; b=EybDaOixCuI49IMQDWj+cTl8lMJdOockFYLcUb0wzzQs5g50Eg0X1bjT8KgzRMjbSDcmDWvcrOJkNZEhikUgCFJYCIhUzDoTmM3YEJwqSlkJnvwKaMpMABKWWyWRbo2TcGRS1mocdlyjFvrPA56rZaNaOfdxyAaGjHCoAPgypKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708676744; c=relaxed/simple;
	bh=gQJNXe+cUsjlARG9btfFSPdyjR3c6w0jRWt8umT1Fos=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JSpFBYj9rJh3cIBKbttdQ1Oic8dI7BPeB/fEjybsqhYutb24bSpu4XqxfCMT4fo7qexLEGacJ9FVPy5Jq5tJj/AboLeCw+VbuR/w+RCwLkbAbRHMuv7OMo4vohRiHZkfycIrul/2ZJWC9L9b0Pnz5R9XB8EListGuvZh439bHMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708676744;
	bh=gQJNXe+cUsjlARG9btfFSPdyjR3c6w0jRWt8umT1Fos=;
	h=Subject:From:To:Date:From;
	b=BLCXO69bWjf+cp1fS96XM7l4mXTjEFJ0D/jHjetjh4AdmhrfEjT+E4lv391QvTGn8
	 V8t5dGSJn9ZgeI8izGHh0TxWHmOJfKDhoxWQrUesennuIWPrtyIDbAzbtVPDD4CdRf
	 sIrKrX1vf8+QFNcIVFgRvE6zrfnmpwu7bqBOW3zk=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2282C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 08:25:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 9A039D990CB
	for <linux-kernel-announce@vger.kernel.org>; Fri, 23 Feb 2024 08:25:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.79 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 23 Feb 2024 08:25:43 +0000
Message-Id: <20240223082543.release-6.1.79@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.79
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.79.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.79.xz

Linux kernel version 6.1.79 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.79.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.79.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.79.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.79/v6.1.78

