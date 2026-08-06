Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 046C33769F8
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786038423; cv=none; b=uD2SLycjZ+s7qH0asheIuQtoHdNncDT5IpL/izeu3iA0O/oTpMfnwQlUWUg5EKvob/HXtjoxIGWAUdbcnG2qfaL+VF9GoJCqegKjlxK92rOEk69LDQEoAMaCshsE7n+RVw/xS9FgLwPWg2tsqlTNIj7Xa0AOGjbbAE2tLdUWDl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786038423; c=relaxed/simple;
	bh=84bkr9wNtdYlG7IVxdWpXAHSL8Nl6YQW80FN6DsbsiE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=T7H7RC1JGhbqRRDyrHD8MlJ3lov/vq+CO3xznqARxLZ4m0fNUI1JNZC4+5izaua+fc5gBRhNAJaT3r6JhVeVWoJG3YZSpQK0dbQQvYthVApTCKzA0/7MFWFnQTLrmq0fDajZTAAq2xjTkFBBEWxeYxsFfu9m+HuaxbgGUM6W24M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786038423;
	bh=84bkr9wNtdYlG7IVxdWpXAHSL8Nl6YQW80FN6DsbsiE=;
	h=Subject:From:To:Date:From;
	b=GnsiEV3llPKZZzS8khq8EBLuUZ0KT1aDZ+khSyM86moQ/UcxStMtL9WakxOrcVL/8
	 3dj++1WIp3z0TKIyh/pQgbWGoFLTKUJ0iowWJz/1zk2Yyoa6asJOt7V9kSqxO816hg
	 AAvx5uqH1v4IHTMtqtYAXhEKlxx0wVri8+XZ/5cE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A59041F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:47:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C3643809A12
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:46:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.149 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 06 Aug 2026 17:46:21 +0000
Message-Id: <20260806174621.release-6.6.149@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.149
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.149.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.149.xz

Linux kernel version 6.6.149 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.149.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.149.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.149.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.149/v6.6.148

